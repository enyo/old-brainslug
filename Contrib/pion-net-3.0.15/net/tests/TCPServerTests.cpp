// ------------------------------------------------------------------
// pion-net: a C++ framework for building lightweight HTTP interfaces
// ------------------------------------------------------------------
// Copyright (C) 2007-2008 Atomic Labs, Inc.  (http://www.atomiclabs.com)
//
// Distributed under the Boost Software License, Version 1.0.
// See http://www.boost.org/LICENSE_1_0.txt
//

#include <pion/PionConfig.hpp>
#include <pion/PionScheduler.hpp>
#include <pion/net/TCPServer.hpp>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <boost/function/function1.hpp>
#include <boost/thread/thread.hpp>
#include <boost/test/unit_test.hpp>
#include <pion/net/HTTPRequest.hpp>
#include <pion/net/HTTPResponse.hpp>

using namespace std;
using namespace pion;
using namespace pion::net;
using boost::asio::ip::tcp;


///
/// HelloServer: simple TCP server that sends "Hello there!" after receiving some data
/// 
class HelloServer
	: public pion::net::TCPServer
{
public:
	virtual ~HelloServer() {}

	/**
	 * creates a Hello server
	 *
	 * @param tcp_port port number used to listen for new connections (IPv4)
	 */
	HelloServer(const unsigned int tcp_port = 0) : pion::net::TCPServer(tcp_port) {}
	
	/**
	 * handles a new TCP connection
	 * 
	 * @param tcp_conn the new TCP connection to handle
	 */
	virtual void handleConnection(pion::net::TCPConnectionPtr& tcp_conn) {
		static const std::string HELLO_MESSAGE("Hello there!\n");
		tcp_conn->setLifecycle(pion::net::TCPConnection::LIFECYCLE_CLOSE);	// make sure it will get closed
		tcp_conn->async_write(boost::asio::buffer(HELLO_MESSAGE),
							  boost::bind(&HelloServer::handleWrite, this, tcp_conn,
										  boost::asio::placeholders::error));
	}

	
private:
	
	/**
	 * called after the initial greeting has been sent
	 *
     * @param tcp_conn the TCP connection to the server
	 * @param write_error message that explains what went wrong (if anything)
	 */
	void handleWrite(pion::net::TCPConnectionPtr& tcp_conn,
					 const boost::system::error_code& write_error)
	{
		if (write_error) {
			tcp_conn->finish();
		} else {
			tcp_conn->async_read_some(boost::bind(&HelloServer::handleRead, this, tcp_conn,
												  boost::asio::placeholders::error,
												  boost::asio::placeholders::bytes_transferred));
		}
	}
	
	/**
	 * called after the client's greeting has been received
	 *
     * @param tcp_conn the TCP connection to the server
	 * @param read_error message that explains what went wrong (if anything)
	 * @param bytes_read number of bytes read from the client
	 */
	void handleRead(pion::net::TCPConnectionPtr& tcp_conn,
					const boost::system::error_code& read_error,
					std::size_t bytes_read)
	{
		static const std::string GOODBYE_MESSAGE("Goodbye!\n");
		if (read_error) {
			tcp_conn->finish();
		} else if (bytes_read == 5 && memcmp(tcp_conn->getReadBuffer().data(), "throw", 5) == 0) {
			throw int(1);
		} else {
			tcp_conn->async_write(boost::asio::buffer(GOODBYE_MESSAGE),
								  boost::bind(&pion::net::TCPConnection::finish, tcp_conn));
		}
	}
};


///
/// HelloServerTests_F: fixture used for running (Hello) server tests
/// 
class HelloServerTests_F {
public:
	// default constructor and destructor
	HelloServerTests_F()
		: hello_server_ptr(new HelloServer)
	{
		// start the HTTP server
		hello_server_ptr->start();
	}
	~HelloServerTests_F() {
		hello_server_ptr->stop();
	}
	inline TCPServerPtr& getServerPtr(void) { return hello_server_ptr; }

	/**
	 * check at 0.1 second intervals for up to one second to see if the number
	 * of connections is as expected
	 *
	 * @param expectedNumberOfConnections expected number of connections
	 */
	void checkNumConnectionsForUpToOneSecond(std::size_t expectedNumberOfConnections)
	{
		for (int i = 0; i < 10; ++i) {
			if (getServerPtr()->getConnections() == expectedNumberOfConnections) break;
			PionScheduler::sleep(0, 100000000); // 0.1 seconds
		}
		BOOST_CHECK_EQUAL(getServerPtr()->getConnections(), expectedNumberOfConnections);
	}

private:
	TCPServerPtr	hello_server_ptr;
};


// HelloServer Test Cases

BOOST_FIXTURE_TEST_SUITE(HelloServerTests_S, HelloServerTests_F)

BOOST_AUTO_TEST_CASE(checkTCPServerIsListening) {
	BOOST_CHECK(getServerPtr()->isListening());
}

BOOST_AUTO_TEST_CASE(checkNumberOfActiveServerConnections) {
	// there should be no connections to start, but wait if needed
	// just in case other tests ran before this one, which are still connected
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(0));

	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream_a(localhost);
	// we need to wait for the server to accept the connection since it happens
	// in another thread.  This should always take less than one second.
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(1));

	// open a few more connections;
	tcp::iostream tcp_stream_b(localhost);
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(2));

	tcp::iostream tcp_stream_c(localhost);
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(3));

	tcp::iostream tcp_stream_d(localhost);
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(4));
	
	// close connections	
	tcp_stream_a.close();
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(3));

	tcp_stream_b.close();
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(2));

	tcp_stream_c.close();
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(1));

	tcp_stream_d.close();
	checkNumConnectionsForUpToOneSecond(static_cast<std::size_t>(0));
}

BOOST_AUTO_TEST_CASE(checkServerConnectionBehavior) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream_a(localhost);

	// read greeting from the server
	std::string message;
	std::getline(tcp_stream_a, message);
	BOOST_CHECK(message == "Hello there!");

	// open a second connection & read the greeting
	tcp::iostream tcp_stream_b(localhost);
	std::getline(tcp_stream_b, message);
	BOOST_CHECK(message == "Hello there!");

	// send greeting to the first server
	tcp_stream_a << "Hi!\n";
	tcp_stream_a.flush();

	// send greeting to the second server
	tcp_stream_b << "Hi!\n";
	tcp_stream_b.flush();
	
	// receive goodbye from the first server
	std::getline(tcp_stream_a, message);
	tcp_stream_a.close();
	BOOST_CHECK(message == "Goodbye!");

	// receive goodbye from the second server
	std::getline(tcp_stream_b, message);
	tcp_stream_b.close();
	BOOST_CHECK(message == "Goodbye!");
}

BOOST_AUTO_TEST_CASE(checkServerExceptionsGetCaught) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream_a(localhost);

	// read greeting from the server
	std::string message;
	std::getline(tcp_stream_a, message);
	BOOST_CHECK(message == "Hello there!");

	// send throw request to the server
	tcp_stream_a << "throw";
	tcp_stream_a.flush();
	tcp_stream_a.close();
}

BOOST_AUTO_TEST_SUITE_END()

///
/// MockSyncServer: simple TCP server that synchronously receives HTTP requests using HTTPMessage::receive(),
/// and checks that the received request object has some expected properties.
///
class MockSyncServer
	: public pion::net::TCPServer
{
public:
	/**
	 * MockSyncServer constructor
	 *
	 * @param scheduler the PionScheduler that will be used to manage worker threads
	 * @param tcp_port port number used to listen for new connections (IPv4)
	 */
	MockSyncServer(PionScheduler& scheduler, const unsigned int tcp_port = 0)
		: pion::net::TCPServer(scheduler, tcp_port) {}
	
	virtual ~MockSyncServer() {}

	/**
	 * handles a new TCP connection
	 * 
	 * @param tcp_conn the new TCP connection to handle
	 */
	virtual void handleConnection(pion::net::TCPConnectionPtr& tcp_conn) {
		// wait until an HTTP request is received or an error occurs
		boost::system::error_code error_code;
		HTTPRequest http_request;
		http_request.receive(*tcp_conn, error_code);
		BOOST_REQUIRE(!error_code);

		// check the received request for expected headers and content
		for (std::map<std::string, std::string>::const_iterator i = m_expectedHeaders.begin(); i != m_expectedHeaders.end(); ++i) {
			BOOST_CHECK_EQUAL(http_request.getHeader(i->first), i->second);
		}
		BOOST_CHECK_EQUAL(m_expectedContent, http_request.getContent());

		if (m_additional_request_test)
			BOOST_CHECK(m_additional_request_test(http_request));

		// send a simple response as evidence that this part of the code was reached
		static const std::string GOODBYE_MESSAGE("Goodbye!\n");
		tcp_conn->write(boost::asio::buffer(GOODBYE_MESSAGE), error_code);

		// wrap up
		tcp_conn->setLifecycle(pion::net::TCPConnection::LIFECYCLE_CLOSE);
		tcp_conn->finish();
	}

	void setExpectations(const std::map<std::string, std::string>& expectedHeaders, 
						 const std::string& expectedContent,
						 boost::function1<bool, HTTPRequest&> additional_request_test = NULL)
	{
		m_expectedHeaders = expectedHeaders;
		m_expectedContent = expectedContent;
		m_additional_request_test = additional_request_test;
	}

private:
	std::map<std::string, std::string> m_expectedHeaders;
	std::string m_expectedContent;
	boost::function1<bool, HTTPRequest&> m_additional_request_test;
};


///
/// MockSyncServerTests_F: fixture used for running MockSyncServer tests
/// 
class MockSyncServerTests_F {
public:
	MockSyncServerTests_F()
		: m_scheduler(), m_sync_server_ptr(new MockSyncServer(m_scheduler))
	{
		m_sync_server_ptr->start();
	}
	~MockSyncServerTests_F() {
		m_sync_server_ptr->stop();
	}
	inline boost::shared_ptr<MockSyncServer>& getServerPtr(void) { return m_sync_server_ptr; }
	inline boost::asio::io_service& getIOService(void) { return m_scheduler.getIOService(); }

private:
	PionSingleServiceScheduler			m_scheduler;
	boost::shared_ptr<MockSyncServer>	m_sync_server_ptr;
};


// MockSyncServer Test Cases

BOOST_FIXTURE_TEST_SUITE(MockSyncServerTests_S, MockSyncServerTests_F)

BOOST_AUTO_TEST_CASE(checkMockSyncServerIsListening) {
	BOOST_CHECK(getServerPtr()->isListening());
}

BOOST_AUTO_TEST_CASE(checkReceivedRequestUsingStream) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_CONTENT_LENGTH] = "8";
	expectedHeaders[HTTPTypes::HEADER_TRANSFER_ENCODING] = ""; // i.e. check that there is no transfer encoding header
	getServerPtr()->setExpectations(expectedHeaders, "12345678");
	
	// send request to the server
	tcp_stream << "POST /resource1 HTTP/1.1" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::HEADER_CONTENT_LENGTH << ": 8" << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF;
	tcp_stream << "12345678";
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}

BOOST_AUTO_TEST_CASE(checkReceivedRequestUsingChunkedStream) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_TRANSFER_ENCODING] = "chunked";
	expectedHeaders[HTTPTypes::HEADER_CONTENT_LENGTH] = ""; // i.e. check that there is no content length header
	getServerPtr()->setExpectations(expectedHeaders, "abcdefghijklmno");
	
	// send request to the server
	tcp_stream << "POST /resource1 HTTP/1.1" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::HEADER_TRANSFER_ENCODING << ": chunked" << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF;
	// write first chunk size
	tcp_stream << "A" << HTTPTypes::STRING_CRLF;
	// write first chunk 
	tcp_stream << "abcdefghij" << HTTPTypes::STRING_CRLF;
	// write second chunk size
	tcp_stream << "5" << HTTPTypes::STRING_CRLF;
	// write second chunk 
	tcp_stream << "klmno" << HTTPTypes::STRING_CRLF;
	// write final chunk size
	tcp_stream << "0" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::STRING_CRLF;
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}

BOOST_AUTO_TEST_CASE(checkReceivedRequestUsingExtraWhiteSpaceAroundChunkSizes) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_TRANSFER_ENCODING] = "chunked";
	getServerPtr()->setExpectations(expectedHeaders, "abcdefghijklmno");
	
	// send request to the server
	tcp_stream << "POST /resource1 HTTP/1.1" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::HEADER_TRANSFER_ENCODING << ": chunked" << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF;

	// write some chunks with chunk sizes with leading and/or trailing tabs and spaces
	tcp_stream <<      " 2"       << HTTPTypes::STRING_CRLF << "ab" << HTTPTypes::STRING_CRLF;
	tcp_stream <<       "2\t \t " << HTTPTypes::STRING_CRLF << "cd" << HTTPTypes::STRING_CRLF;
	tcp_stream <<     "  2  "     << HTTPTypes::STRING_CRLF << "ef" << HTTPTypes::STRING_CRLF;
	tcp_stream << "\t \t 2\t\t"   << HTTPTypes::STRING_CRLF << "gh" << HTTPTypes::STRING_CRLF;

	// write chunks with extra CRLF before chunk size
	// (extra CRLF after chunk size not allowed, since it would be ambiguous)
	tcp_stream << HTTPTypes::STRING_CRLF << "2"   << HTTPTypes::STRING_CRLF << "ij" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::STRING_CRLF << " 5 " << HTTPTypes::STRING_CRLF << "klmno" << HTTPTypes::STRING_CRLF;

	// write final chunk size
	tcp_stream << "0" << HTTPTypes::STRING_CRLF;
	tcp_stream << HTTPTypes::STRING_CRLF;
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}

BOOST_AUTO_TEST_CASE(checkReceivedRequestUsingRequestObject) {
	// open a connection
	TCPConnection tcp_conn(getIOService());
	boost::system::error_code error_code;
	error_code = tcp_conn.connect(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	BOOST_REQUIRE(!error_code);

	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_CONTENT_LENGTH] = "4";
	expectedHeaders[HTTPTypes::HEADER_TRANSFER_ENCODING] = ""; // i.e. check that there is no transfer encoding header
	expectedHeaders["foo"] = "bar";
	getServerPtr()->setExpectations(expectedHeaders, "wxyz");
	
	// send request to the server
	HTTPRequest http_request;
	http_request.addHeader("foo", "bar");
	http_request.setContentLength(4);
	http_request.createContentBuffer();
	memcpy(http_request.getContent(), "wxyz", 4);
	http_request.send(tcp_conn, error_code);
	BOOST_REQUIRE(!error_code);

	// receive the response from the server
	tcp_conn.read_some(error_code);
	BOOST_CHECK(!error_code);
	BOOST_CHECK(strncmp(tcp_conn.getReadBuffer().data(), "Goodbye!", strlen("Goodbye!")) == 0);
}

bool queryKeyXHasValueY(HTTPRequest& http_request) {
	return http_request.getQuery("x") == "y";
}

BOOST_AUTO_TEST_CASE(checkQueryOfReceivedRequestParsed) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> empty_map;
	getServerPtr()->setExpectations(empty_map, "", queryKeyXHasValueY);
	
	// send request to the server
	tcp_stream << "GET /resource1?x=y HTTP/1.1" << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF;
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}

BOOST_AUTO_TEST_CASE(checkUrlEncodedQueryInPostContentParsed) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_CONTENT_LENGTH] = "3";
	getServerPtr()->setExpectations(expectedHeaders, "x=y", queryKeyXHasValueY);
	
	// send request to the server
	tcp_stream << "POST /resource1 HTTP/1.1" << HTTPTypes::STRING_CRLF
			   << HTTPTypes::HEADER_CONTENT_LENGTH << ": 3" << HTTPTypes::STRING_CRLF
			   << HTTPTypes::HEADER_CONTENT_TYPE << ": " << HTTPTypes::CONTENT_TYPE_URLENCODED << "; charset=ECMA-cyrillic"
			   << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF
			   << "x=y";
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}
/*
Charset parsing removed due to performance concerns, but might be restored later.

bool charsetIsEcmaCyrillic(HTTPRequest& http_request) {
	return http_request.getCharset() == "ECMA-cyrillic";
}

BOOST_AUTO_TEST_CASE(checkCharsetOfReceivedRequest) {
	// open a connection
	tcp::endpoint localhost(boost::asio::ip::address::from_string("127.0.0.1"), getServerPtr()->getPort());
	tcp::iostream tcp_stream(localhost);

	// set expectations for received request
	std::map<std::string, std::string> expectedHeaders;
	expectedHeaders[HTTPTypes::HEADER_CONTENT_LENGTH] = "3";
	getServerPtr()->setExpectations(expectedHeaders, "x=y", charsetIsEcmaCyrillic);
	
	// send request to the server
	tcp_stream << "POST /resource1 HTTP/1.1" << HTTPTypes::STRING_CRLF
			   << HTTPTypes::HEADER_CONTENT_LENGTH << ": 3" << HTTPTypes::STRING_CRLF
			   << HTTPTypes::HEADER_CONTENT_TYPE << ": " << HTTPTypes::CONTENT_TYPE_URLENCODED << "; charset=ECMA-cyrillic"
			   << HTTPTypes::STRING_CRLF << HTTPTypes::STRING_CRLF
			   << "x=y";
	tcp_stream.flush();

	// receive goodbye from the server
	std::string message;
	std::getline(tcp_stream, message);
	BOOST_CHECK(message == "Goodbye!");
	tcp_stream.close();
}
*/

BOOST_AUTO_TEST_SUITE_END()
