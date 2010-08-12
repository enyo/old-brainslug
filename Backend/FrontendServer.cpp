#include "FrontendServer.h"
#include "FrontendConnection.h"
#include <boost/bind.hpp>

FrontendServer::FrontendServer(boost::asio::io_service& ios, const size_t port)
  : _acceptor(ios,boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)) {
  startAccept();
}

void FrontendServer::startAccept() {
  const boost::shared_ptr<FrontendConnection> connection(FrontendConnection::create(_acceptor.io_service()));
  _acceptor.async_accept(
			 connection->socket(),
			 boost::bind(
				     &FrontendServer::handleAccept, 
				     this, 
				     connection,
				     boost::asio::placeholders::error));
}

void FrontendServer::handleAccept(boost::shared_ptr<FrontendConnection> connection, const boost::system::error_code& error) {
  if (!error) {
    connection->start();
    startAccept();
  }
}
