#include "FrontendServer.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <boost/bind.hpp>
#include <json/writer.h>
#include <json/elements.h>
#include <iostream>
#include <sstream>

FrontendServer::FrontendServer(const size_t port)
  : _httpServer(boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)) {
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
}

void FrontendServer::handleNotFound(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  std::cout << "Handled request with no registered service." << std::endl;
  dumpRequestToCout(request);
}

void FrontendServer::handleMovies(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  const boost::shared_ptr<pion::net::HTTPResponseWriter> writer(pion::net::HTTPResponseWriter::create(connection,*request));

  std::string resultString;
  {
    /*
        "Movies" : [ { "Title" : "Back to the Future", "Year" : "1985", "Rating" : 8.7 } ]
     */
    json::Array movies;
    {
      json::Object movie;
      movie["Title"] = json::String("Back to the Future");
      movie["Year"] = json::String("1985");
      movie["Rating"] = json::Number(8.7);
      movies.Insert(movie);
    }
    json::Object doc;
    doc["Movies"] = movies;
    std::stringstream ss;

    json::Writer::Write(doc,ss);
    resultString = ss.str();
    std::cout << "Writing JSON: " << resultString << std::endl;
  }
  writer->write(resultString.c_str());
  writer->send();
}

