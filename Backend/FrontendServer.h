#pragma once
#include "MoviesResourceHandler.h"

struct Options;

class FrontendServer {
public:
  FrontendServer(const Options&);
  void run();
private:
  void handleNotFound(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void handleTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void listTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findTVShowByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  pion::net::HTTPServer _httpServer;
  MoviesResourceHandler _mh;
};
