#include "MoviesResourceHandler.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

MoviesResourceHandler::MoviesResourceHandler(const DBPtr db)
  : _db(db) {}

void MoviesResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    listMovies(request,connection);
  else if (request->hasQuery("view"))
    findMovieByID(request,connection);
}

void MoviesResourceHandler::findMovieByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const pion::net::HTTPTypes::QueryParams& params = request->getQueryParams();
  const pion::net::HTTPTypes::QueryParams::const_iterator match(params.find("view"));
  if (match != params.end()) {
    const std::string& id = match->second;
    if (JSONObjectPtr doc = _db->selectWhere("movies", std::make_pair("id",id))) {
      const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));
      std::stringstream ss;
      json::Writer::Write(*doc,ss);
      writer->write(ss.str().c_str());
      writer->send();
    }
  }
}

void MoviesResourceHandler::listMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (JSONObjectPtr doc = _db->select("movies")) {
    const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));
    std::stringstream ss;
    json::Writer::Write(*doc,ss);
    writer->write(ss.str().c_str());
    writer->send();
  }
}
