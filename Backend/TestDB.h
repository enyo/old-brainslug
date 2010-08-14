#pragma once
#include "DB.h"

// a mock database that stores JSON data internally

class TestDB : public DB {
public:
  TestDB(const bool createDoc=true);
protected:
  JSONObjectPtr doc() const;
private:
  JSONObjectPtr _doc;
};
