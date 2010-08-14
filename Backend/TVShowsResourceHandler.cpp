#include "TVShowsResourceHandler.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

TVShowsResourceHandler::TVShowsResourceHandler(const DBPtr db)
  : ResourceHandler(db) {}


void TVShowsResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    listTVShows(request,connection);
  else if (request->hasQuery("view"))
    findTVShowByID(request,connection);
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

void TVShowsResourceHandler::listTVShows(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (JSONObjectPtr doc = db()->select("tvshows")) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
  }
}

void TVShowsResourceHandler::findTVShowByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const pion::net::HTTPTypes::QueryParams& params = request->getQueryParams();
  const pion::net::HTTPTypes::QueryParams::const_iterator match(params.find("view"));
  if (match != params.end()) {
    const std::string& id = match->second;
    if (JSONObjectPtr doc = db()->selectWhere("tvshows", std::make_pair("id",id))) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
    }
  }
}
