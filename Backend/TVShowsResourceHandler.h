#pragma once
#include "ResourceHandler.h"

class TVShowsResourceHandler : public ResourceHandler {
public:
  TVShowsResourceHandler(const DBPtr db);
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void findTVShowByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  const DBPtr _db;
};
