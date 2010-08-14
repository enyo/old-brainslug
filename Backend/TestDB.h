#pragma once
#include "DB.h"

// a mock database that stores JSON data internally

class TestDB : public DB {
public:
  TestDB(const std::string& source, const bool createDoc=true);
protected:
  JSONObjectPtr doc() const;
private:
  JSONObjectPtr _doc;
  const std::string _source;
};
