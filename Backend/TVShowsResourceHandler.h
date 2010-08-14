#pragma once
<<<<<<< HEAD
#include "ResourceHandler.h"
=======
#include <pion/net/HTTPServer.hpp>
#include "DB.h"
>>>>>>> tv_shows

class TVShowsResourceHandler : public ResourceHandler {
public:
  TVShowsResourceHandler(const DBPtr db);
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void listTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findTVShowByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

  const DBPtr _db;
};
