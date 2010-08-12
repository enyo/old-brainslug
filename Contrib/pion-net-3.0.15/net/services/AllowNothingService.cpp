// ------------------------------------------------------------------
// pion-net: a C++ framework for building lightweight HTTP interfaces
// ------------------------------------------------------------------
// Copyright (C) 2007-2008 Atomic Labs, Inc.  (http://www.atomiclabs.com)
//
// Distributed under the Boost Software License, Version 1.0.
// See http://www.boost.org/LICENSE_1_0.txt
//

#include "AllowNothingService.hpp"
#include <pion/PionConfig.hpp>
#include <pion/net/HTTPResponseWriter.hpp>

using namespace pion;
using namespace pion::net;

namespace pion {		// begin namespace pion
namespace plugins {		// begin namespace plugins

	
void AllowNothingService::operator()(HTTPRequestPtr& request, TCPConnectionPtr& tcp_conn)
{
	static const std::string DENY_HTML = "<html><body>No, you can't.</body></html>";
	HTTPResponseWriterPtr writer(HTTPResponseWriter::create(tcp_conn, *request,
															boost::bind(&TCPConnection::finish, tcp_conn)));
	writer->getResponse().setStatusCode(HTTPTypes::RESPONSE_CODE_METHOD_NOT_ALLOWED);
	writer->getResponse().setStatusMessage(HTTPTypes::RESPONSE_MESSAGE_METHOD_NOT_ALLOWED);

	// This is a legitimate header, but it crashes when it's sent.
	//writer->getResponse().addHeader("Allow", "");

	// Use this line to demonstrate that it's the empty header value that's causing the problem.
	writer->getResponse().addHeader("Allow", "GET");

	writer->writeNoCopy(DENY_HTML);
	writer->writeNoCopy(HTTPTypes::STRING_CRLF);
	writer->writeNoCopy(HTTPTypes::STRING_CRLF);
	writer->send();
}

	
}	// end namespace plugins
}	// end namespace pion


/// creates new AllowNothingService objects
extern "C" PION_SERVICE_API pion::plugins::AllowNothingService *pion_create_AllowNothingService(void)
{
	return new pion::plugins::AllowNothingService();
}

/// destroys AllowNothingService objects
extern "C" PION_SERVICE_API void pion_destroy_AllowNothingService(pion::plugins::AllowNothingService *service_ptr)
{
	delete service_ptr;
}
