#pragma once
#include <pion/net/HTTPServer.hpp>

class TVShowsResourceHandler {
public:
  void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
private:
  void listTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findTVShowByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
};
