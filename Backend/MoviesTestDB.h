#pragma once
#include "DB.h"
#include <json/elements.h>

class MoviesTestDB : public DB {
public:
  MoviesTestDB();
  // note: these queries ONLY respond to the source named "movies" in order to simulate having a real table in a real db
  virtual JSONObjectPtr select(const std::string& fromSource) const;
  virtual JSONObjectPtr selectWhere(
				    const std::string& fromSource, 
				    const std::pair<const std::string,const std::string>& query) const;
private:
  JSONObjectPtr _doc;
};
