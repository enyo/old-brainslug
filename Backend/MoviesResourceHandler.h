#pragma once
#include <pion/net/HTTPServer.hpp>
#include "DB.h"

class MoviesResourceHandler {
public:
  MoviesResourceHandler(const DBPtr db);
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void listMovies(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findMovieByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  const DBPtr _db;
};
