// ------------------------------------------------------------------
// pion-net: a C++ framework for building lightweight HTTP interfaces
// ------------------------------------------------------------------
// Copyright (C) 2007-2008 Atomic Labs, Inc.  (http://www.atomiclabs.com)
//
// Distributed under the Boost Software License, Version 1.0.
// See http://www.boost.org/LICENSE_1_0.txt
//

#include "HelloService.hpp"
#include <pion/net/HTTPResponseWriter.hpp>

using namespace pion;
using namespace pion::net;

namespace pion {		// begin namespace pion
namespace plugins {		// begin namespace plugins

	
// HelloService member functions

/// handles requests for HelloService
void HelloService::operator()(HTTPRequestPtr& request, TCPConnectionPtr& tcp_conn)
{
	static const std::string HELLO_HTML = "<html><body>Hello World!</body></html>";
	HTTPResponseWriterPtr writer(HTTPResponseWriter::create(tcp_conn, *request,
															boost::bind(&TCPConnection::finish, tcp_conn)));
	writer->writeNoCopy(HELLO_HTML);
	writer->writeNoCopy(HTTPTypes::STRING_CRLF);
	writer->writeNoCopy(HTTPTypes::STRING_CRLF);
	writer->send();
}


}	// end namespace plugins
}	// end namespace pion


/// creates new HelloService objects
extern "C" PION_SERVICE_API pion::plugins::HelloService *pion_create_HelloService(void)
{
	return new pion::plugins::HelloService();
}

/// destroys HelloService objects
extern "C" PION_SERVICE_API void pion_destroy_HelloService(pion::plugins::HelloService *service_ptr)
{
	delete service_ptr;
}
