#include "SeasonsResourceHandler.h"

SeasonsResourceHandler::SeasonsResourceHandler(const DBPtr db)
  : ResourceHandler(db,"seasons") {}

void SeasonsResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("tvShow"))
      findByTVShowID(request,connection);
  else
    ResourceHandler::handle(request,connection);
}

void SeasonsResourceHandler::findByTVShowID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const pion::net::HTTPTypes::QueryParams& params = request->getQueryParams();
  const pion::net::HTTPTypes::QueryParams::const_iterator match(params.find("tvShow"));
  if (match != params.end()) {
    const std::string& tvShowID = match->second;
    if (JSONObjectPtr doc = db()->selectWhere(source(), std::make_pair("tvShow",tvShowID))) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
    }
  }
}

