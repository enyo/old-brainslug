#pragma once
#include "TestDB.h"
#include <json/elements.h>

class MoviesTestDB : public TestDB {
public:
  MoviesTestDB();
  // note: these queries ONLY respond to the source named "movies" in order to simulate having a real table in a real db
  virtual JSONObjectPtr select(const std::string& fromSource) const;
  virtual JSONObjectPtr selectWhere(
				    const std::string& fromSource, 
				    const std::pair<const std::string,const std::string>& query) const;
};
