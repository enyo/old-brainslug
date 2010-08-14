#include "MoviesResourceHandler.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <boost/bind.hpp>
#include <json/writer.h>
#include <json/elements.h>
#include <iostream>
#include <sstream>

namespace {
  struct DB {
    DB() {
      json::Array movies;
      {
	json::Object movie;
	movie["id"] = json::String("1");
	movie["name"] = json::String("Sex and the City");
	movie["imdbId"] = json::String("tt10000774");
	movie["coverUrl"] = json::String("http://www.pursepage.com/wp-content/uploads/2008/01/sex-and-the-city-movie-poster.jpg");
	movies.Insert(movie);
      }
      {
	json::Object movie;
	movie["id"] = json::String("2");
	movie["name"] = json::String("Twilight");
	movie["imdbId"] = json::String("tt1099212");
	movie["coverUrl"] = json::String("http://juiceboxdotcom.com/wp-content/themes/mimbo2.2/images//twilight-movie-poster.jpg");
	movies.Insert(movie);
      }
      doc["content"] = movies;
      doc["error"] = json::Null();
    }

    json::Object doc;
  };

  DB moviesDB;
}

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
    const json::Array& content = moviesDB.doc["content"];
    json::Array::const_iterator movieIt(content.Begin());
    const json::Array::const_iterator end(content.End());
    for (; movieIt!=end; ++movieIt) {
      const json::Object& movie = *movieIt;
      const json::String& movieId = movie["id"];
      if (movieId == id) {
	const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));
	std::stringstream ss;
	json::Object doc;
	doc["content"] = movie;
	doc["error"] = json::Null();
	json::Writer::Write(doc,ss);
	writer->write(ss.str().c_str());
	writer->send();	
	return;
      }
    }
  }
}

void MoviesResourceHandler::listMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));
  std::stringstream ss;
  json::Writer::Write(moviesDB.doc,ss);
  writer->write(ss.str().c_str());
  writer->send();
}
