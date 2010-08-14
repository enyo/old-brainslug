#pragma once
#include "DB.h"
#include <pion/net/HTTPServer.hpp>
#include <pion/net/HTTPResponseWriter.hpp>
#include <json/elements.h>

class ResourceHandler {
public:
  ResourceHandler(const DBPtr db, const std::string& source);
  virtual ~ResourceHandler();
  virtual void handle(pion::net::HTTPRequestPtr&,pion::net::TCPConnectionPtr&);

protected:
  DBPtr db() const;
  static void writeJsonHttpResponse(const json::Object& obj, pion::net::HTTPResponseWriter& writer, const bool setStatusOK=true);

private:
  const DBPtr _db;
  const std::string _source;
};
