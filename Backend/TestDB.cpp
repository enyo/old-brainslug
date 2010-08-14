#include "TestDB.h"

TestDB::TestDB(const std::string& source, const bool createDoc)
  : _doc(createDoc ? new json::Object : 0)
  , _source(source) {}

JSONObjectPtr TestDB::doc() const {
  return _doc;
}

JSONObjectPtr TestDB::select(const std::string& fromSource) const {
  if (fromSource == _source)
    return doc();
  else {
    JSONObjectPtr resultsDoc(new json::Object);
    (*resultsDoc)["error"] = json::String(std::string("unrecognized db source: ") + fromSource);
    return resultsDoc;
  }
}

JSONObjectPtr TestDB::selectWhere(const std::string& fromSource, const std::pair<const std::string,const std::string>& query) const {
  JSONObjectPtr resultsDoc(new json::Object);
  bool errorSet(false);
  json::Array resultsContent;
  (*resultsDoc)["content"] = json::Array();
  if (fromSource == _source) {
    const std::string& key = query.first;
    const std::string& value = query.second;
    const json::Array& content = (*doc())["content"];
    json::Array::const_iterator itemIt(content.Begin());
    const json::Array::const_iterator end(content.End());
    try {
      for (; itemIt!=end; ++itemIt) {
	const json::Object& item = *itemIt;
	const json::String& itemValue = item[key];
	if (itemValue == value)
	  resultsContent.Insert(item);
      }
    } catch (const json::Exception& e) {
      // probably the key is not part of the item object
      (*resultsDoc)["error"] = json::String(e.what());
      errorSet = true;
    }
  } else {
    (*resultsDoc)["error"] = json::String(std::string("unrecognized db source: ") + fromSource);
    errorSet = true;
  }
  (*resultsDoc)["content"] = resultsContent;
  if (!errorSet)
    (*resultsDoc)["error"] = json::Null();
  return resultsDoc;
}

