#include "TVShowsResourceHandler.h"

void TVShowsResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    listTVShows(request,connection);
  else if (request->hasQuery("view"))
    findTVShowByID(request,connection);
}

void TVShowsResourceHandler::listTVShows(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
}

void TVShowsResourceHandler::findTVShowByID(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
}
