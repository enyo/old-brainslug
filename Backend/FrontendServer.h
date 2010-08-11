#pragma once
#include <boost/asio.hpp>

class FrontendServer {
public:
  FrontendServer(boost::asio::io_service& ios, const size_t port);
private:
  void startAccept();
  void handleAccept();
  boost::asio::ip::tcp::acceptor _acceptor;
};
