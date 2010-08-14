#pragma once
#include <boost/shared_ptr.hpp>
#include <json/elements.h>
#include <string>
#include <utility>

typedef boost::shared_ptr<json::Object> JSONObjectPtr;

// base class representing a database of some kind that supports
// returning results as JSON structures

class DB {
public:
  virtual ~DB() {}
  // returns a JSON document containing:
  // 1) all items in the given source (or nothing if the source is empty)
  // 2) an error or null if everything succeeded
  virtual JSONObjectPtr select(const std::string& fromSource) const = 0;
  // same as the above method, but allows items to be filtered based on some query
  // pair, with the first element of the pair being the key and the second element being
  // the value that the key must match
  virtual JSONObjectPtr selectWhere(
				    const std::string& fromSource, 
				    const std::pair<const std::string,const std::string>& query) const = 0;
};

typedef boost::shared_ptr<DB> DBPtr;
