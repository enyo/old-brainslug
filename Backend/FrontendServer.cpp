#include "FrontendServer.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <boost/bind.hpp>
#include <iostream>

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
  writer->write("<html><head><title>No Movies Found</title></head><body><p>No movies found.</p></body></html>");
  writer->send();
}

