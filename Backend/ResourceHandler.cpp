#include "ResourceHandler.h"
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

ResourceHandler::ResourceHandler(const DBPtr db)
  : _db(db) {}

ResourceHandler::~ResourceHandler() {}

void ResourceHandler::writeJsonHttpResponse(const json::Object& obj,pion::net::HTTPResponseWriter& writer,const bool setStatusOK) {
      std::stringstream ss;
      json::Writer::Write(obj,ss);
      if (setStatusOK) {
	writer.getResponse().setStatusCode(pion::net::HTTPTypes::RESPONSE_CODE_OK);
	writer.getResponse().setStatusMessage(pion::net::HTTPTypes::RESPONSE_MESSAGE_OK);
      }
      writer.write(ss.str().c_str());
      writer.send();
}

DBPtr ResourceHandler::db() const {
  return _db;
}

void ResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
    JSONObjectPtr doc(new json::Object);
    (*doc)["error"] = json::String(std::string("unrecognized query ") + request->getQueryString());
    boost::shared_ptr<pion::net::HTTPResponseWriter> writer(
							    pion::net::HTTPResponseWriter::create(
												  connection,
												  *request,
												  boost::bind(&pion::net::TCPConnection::finish, connection)));
    writer->getResponse().setStatusCode(pion::net::HTTPTypes::RESPONSE_CODE_NOT_IMPLEMENTED);
    writer->getResponse().setStatusMessage(pion::net::HTTPTypes::RESPONSE_MESSAGE_NOT_IMPLEMENTED);
    writeJsonHttpResponse(
			  *doc,
			  *writer,
			  false);
}
