#pragma once
#include "MoviesResourceHandler.h"
#include "DB.h"
#include "TVShowsResourceHandler.h"

struct Options;

class FrontendServer {
public:
  FrontendServer(const Options&);
  void run();
private:
  void handleNotFound(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  pion::net::HTTPServer _httpServer;
  const DBPtr _moviesTestDB;
  MoviesResourceHandler _mh;
  TVShowsResourceHandler _tvh;
};
