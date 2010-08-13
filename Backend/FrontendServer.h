#pragma once
#include "MoviesResourceHandler.h"
#include "TVShowsResourceHandler.h"

struct Options;

class FrontendServer {
public:
  FrontendServer(const Options&);
  void run();
private:
  void handleNotFound(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  pion::net::HTTPServer _httpServer;
  MoviesResourceHandler _mh;
  TVShowsResourceHandler _tvh;
};
