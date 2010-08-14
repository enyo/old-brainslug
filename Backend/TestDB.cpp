#include "TestDB.h"

TestDB::TestDB(const std::string& source, const bool createDoc)
  : _doc(createDoc ? new json::Object : 0)
  , _source(source) {}

JSONObjectPtr TestDB::doc() const {
  return _doc;
}
