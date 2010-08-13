#include "FrontendServer.h"
#include "Options.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <boost/bind.hpp>
#include <json/writer.h>
#include <json/elements.h>
#include <iostream>
#include <sstream>

FrontendServer::FrontendServer(const Options& o)
  : _httpServer(boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), o.port)) {
  _httpServer.setNotFoundHandler(
				 boost::bind(&FrontendServer::handleNotFound, this, _1, _2));
  _httpServer.addResource(
			  "/movies",
			  boost::bind(&FrontendServer::handleMovies, this, _1, _2));
}

void FrontendServer::run() {
  if (!_httpServer.isListening())
    _httpServer.start();
  _httpServer.join();
}

namespace {
  void dumpRequestToCout(const pion::net::HTTPRequestPtr request) {
    std::cout << "Request: [method=\"" 
	      << request->getMethod() 
	      << "\"] [resource=\"" 
	      << request->getOriginalResource() 
	      << "\"] [query=\"" 
	      << request->getQueryString() 
	      << "\"]" << std::endl;
  }

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

void FrontendServer::handleNotFound(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  std::cout << "Handled request with no registered service." << std::endl;
  dumpRequestToCout(request);
}

void FrontendServer::findMovieByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
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
	std::string resultString;
	std::stringstream ss;
	json::Object doc;
	doc["content"] = movie;
	doc["error"] = json::Null();
	json::Writer::Write(doc,ss);
	resultString = ss.str();
	writer->write(resultString.c_str());
	writer->send();	
	return;
      }
    }
  }
}

void FrontendServer::listMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));
  std::string resultString;
  std::stringstream ss;
  json::Writer::Write(moviesDB.doc,ss);
  resultString = ss.str();
  writer->write(resultString.c_str());
  writer->send();
}

void FrontendServer::handleMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    listMovies(request,connection);
  else if (request->hasQuery("view"))
    findMovieByID(request,connection);
}

