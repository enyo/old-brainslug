#include "FrontendServer.h"

FrontendServer::FrontendServer(boost::asio::io_service& ios, const size_t port)
  : _acceptor(ios,boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)) {
  startAccept();
}

void FrontendServer::startAccept() {
}
