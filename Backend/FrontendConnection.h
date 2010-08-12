#pragma once
#include <boost/enable_shared_from_this.hpp>
#include <boost/asio.hpp>

class FrontendConnection : public boost::enable_shared_from_this<FrontendConnection> {
public:
  static boost::shared_ptr<FrontendConnection> create(boost::asio::io_service& ios);
  boost::asio::ip::tcp::socket& socket();
  void start();

private:
  FrontendConnection(boost::asio::io_service& ios);
  void handle_write(const boost::system::error_code& error, size_t bytesTransferred);
  
  boost::asio::ip::tcp::socket _socket;
};
