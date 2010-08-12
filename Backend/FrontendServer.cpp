#include "FrontendServer.h"
#include <boost/bind.hpp>
#include <iostream>

FrontendServer::FrontendServer(const size_t port)
  : _httpServer(boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)) {
  _httpServer.setNotFoundHandler(
				 boost::bind(&FrontendServer::handleNotFound, this, _1, _2)
				 );
}

void FrontendServer::run() {
  if (!_httpServer.isListening())
    _httpServer.start();
  _httpServer.join();
}

void FrontendServer::handleNotFound(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  std::cout << "Handled request with no registered service." << std::endl;
  std::cout << "Request: [method=\"" << request->getMethod() << "\"] [resource=\"" << request->getOriginalResource() << "\"] [query=\"" << request->getQueryString() << "\"]" << std::endl;
}
