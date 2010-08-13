#pragma once
#include <pion/net/HTTPServer.hpp>

struct Options;

class FrontendServer {
public:
  FrontendServer(const Options&);
  void run();
private:
  void handleNotFound(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void handleMovies(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void handleTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void listMovies(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findMovieByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void listTVShows(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  void findTVShowByID(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);
  pion::net::HTTPServer _httpServer;
};
