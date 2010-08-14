#pragma once
#include "ResourceHandler.h"

class MoviesResourceHandler : public ResourceHandler {
public:
  MoviesResourceHandler(const DBPtr db);
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void findMovieByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
};
