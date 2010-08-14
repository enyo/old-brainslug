#include "TVShowsResourceHandler.h"
#include <pion/net/HTTPResponseWriter.hpp>
#include <pion/net/HTTPTypes.hpp>
#include <json/writer.h>
#include <sstream>

TVShowsResourceHandler::TVShowsResourceHandler(const DBPtr db)
  : ResourceHandler(db,"tvshows") {}

void TVShowsResourceHandler::handle(pion::net::HTTPRequestPtr& request, pion::net::TCPConnectionPtr& connection) {
  if (request->hasQuery("list"))
    list(request,connection);
  else if (request->hasQuery("view"))
    findByID(request,connection);
  else
    ResourceHandler::handle(request,connection);
}
