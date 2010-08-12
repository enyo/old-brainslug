#pragma once
#include <pion/net/HTTPServer.hpp>

class FrontendConnection;

class FrontendServer {
public:
  FrontendServer(const size_t port);
  void run();
private:
  pion::net::HTTPServer _httpServer;
};
