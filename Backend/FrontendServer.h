#pragma once
#include <boost/asio.hpp>

class FrontendConnection;

class FrontendServer {
public:
  FrontendServer(boost::asio::io_service& ios, const size_t port);
private:
  void startAccept();
  void handleAccept(boost::shared_ptr<FrontendConnection> connection, const boost::system::error_code& error);
  boost::asio::ip::tcp::acceptor _acceptor;
};
