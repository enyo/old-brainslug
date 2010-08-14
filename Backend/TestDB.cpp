#include "TestDB.h"

TestDB::TestDB(const bool createDoc)
  : _doc(createDoc ? new json::Object : 0) {}

JSONObjectPtr TestDB::doc() const {
  return _doc;
}
