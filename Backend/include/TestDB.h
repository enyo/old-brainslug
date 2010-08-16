#pragma once
#include "DB.h"

// a mock database that stores JSON data internally

class TestDB : public DB {
public:
  TestDB(const std::string& source, const bool createDoc=true);
  // note: these queries ONLY respond to the given source in order to simulate having a real table in a real db
  virtual JSONObjectPtr select(const std::string& fromSource) const;
  virtual JSONObjectPtr selectWhere(
				    const std::string& fromSource, 
				    const std::pair<const std::string,const std::string>& query) const;

protected:
  JSONObjectPtr doc() const;
private:
  JSONObjectPtr _doc;
  const std::string _source;
};
