#include "ResourceHandler.h"
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

ResourceHandler::ResourceHandler(const DBPtr db, const std::string& source)
  : _db(db)
  , _source(source) {}

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
  if (request->hasQuery("list"))
    list(request,connection);
  else if (request->hasQuery("view"))
    findByID(request,connection);
  else {
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
}

void ResourceHandler::list(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (JSONObjectPtr doc = db()->select(_source)) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
  }
}

void ResourceHandler::findByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const pion::net::HTTPTypes::QueryParams& params = request->getQueryParams();
  const pion::net::HTTPTypes::QueryParams::const_iterator match(params.find("view"));
  if (match != params.end()) {
    const std::string& id = match->second;
    if (JSONObjectPtr doc = db()->selectWhere(_source, std::make_pair("id",id))) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
    }
  }
}

