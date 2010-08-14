#include "MoviesResourceHandler.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

MoviesResourceHandler::MoviesResourceHandler(const DBPtr db)
  : ResourceHandler(db) {}

void MoviesResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    listMovies(request,connection);
  else if (request->hasQuery("view"))
    findMovieByID(request,connection);
  else
    ResourceHandler::handle(request,connection);    
}

void MoviesResourceHandler::findMovieByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const pion::net::HTTPTypes::QueryParams& params = request->getQueryParams();
  const pion::net::HTTPTypes::QueryParams::const_iterator match(params.find("view"));
  if (match != params.end()) {
    const std::string& id = match->second;
    if (JSONObjectPtr doc = db()->selectWhere("movies", std::make_pair("id",id))) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
    }
  }
}

void MoviesResourceHandler::listMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (JSONObjectPtr doc = db()->select("movies")) {
    writeJsonHttpResponse(
			  *doc,
			  *pion::net::HTTPResponseWriter::create(
								 connection,
								 *request,
								 boost::bind(&pion::net::TCPConnection::finish, connection)));
  }
}
