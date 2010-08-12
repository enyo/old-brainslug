#include "FrontendConnection.h"
#include <iostream>

FrontendConnection::FrontendConnection(boost::asio::io_service& ios) 
  : _socket(ios) {}

boost::shared_ptr<FrontendConnection> FrontendConnection::create(boost::asio::io_service& ios) {
  return boost::shared_ptr<FrontendConnection>(new FrontendConnection(ios));
}

boost::asio::ip::tcp::socket& FrontendConnection::socket() { return _socket; }

void FrontendConnection::start() {
  std::cout << "Established connection." << std::endl;
}

void FrontendConnection::handleWrite(const boost::system::error_code& error, size_t bytesTransferred) {
}
