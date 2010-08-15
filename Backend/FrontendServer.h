#pragma once
#include "MoviesResourceHandler.h"
#include "TVShowsResourceHandler.h"
#include "SeasonsResourceHandler.h"
#include "DB.h"

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
  const DBPtr _tvshowsTestDB;
  TVShowsResourceHandler _tvh;
  const DBPtr _seasonsTestDB;
  SeasonsResourceHandler _sh;
};
