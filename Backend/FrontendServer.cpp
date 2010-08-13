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
			  boost::bind(&MoviesResourceHandler::handle, &_mh, _1, _2));
  _httpServer.addResource(
			  "/tvshows",
			  boost::bind(&TVShowsResourceHandler::handle, &_tvh, _1, _2));
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


