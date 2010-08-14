#pragma once
#include "ResourceHandler.h"

class MoviesResourceHandler : public ResourceHandler {
public:
  MoviesResourceHandler(const DBPtr db);
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void listMovies(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findMovieByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
};
