#include "TVShowsTestDB.h"

TVShowsTestDB::TVShowsTestDB()
  : TestDB("tvshows") {
  json::Array tvshows;
  {
    json::Object tvshow;
    tvshow["id"] = json::String("1");
    tvshow["name"] = json::String("Desperate Housewives");
    tvshow["imdbId"] = json::String("tt0410975");
    tvshow["coverUrl"] = json::String("http://getvideoartwork.com/gallery/main.php?g2_view=core.DownloadItem&g2_itemId=8131&g2_serialNumber=2");
    tvshows.Insert(tvshow);
  }
  {
    json::Object tvshow;
    tvshow["id"] = json::String("2");
    tvshow["name"] = json::String("Sex and the City");
    tvshow["imdbId"] = json::String("tt0159206");
    tvshow["coverUrl"] = json::String("http://getvideoartwork.com/gallery/main.php?g2_view=core.DownloadItem&g2_itemId=70729&g2_serialNumber=1");
    tvshows.Insert(tvshow);
  }
  (*doc())["content"] = tvshows;
  (*doc())["error"] = json::Null();
}

JSONObjectPtr TVShowsTestDB::select(const std::string& fromSource) const {
  if (fromSource == "tvshows")
    return doc();
  else {
    JSONObjectPtr resultsDoc(new json::Object);
    (*resultsDoc)["error"] = json::String(std::string("unrecognized db source: ") + fromSource);
    return resultsDoc;
  }
}

JSONObjectPtr TVShowsTestDB::selectWhere(const std::string& fromSource, const std::pair<const std::string,const std::string>& query) const {
  JSONObjectPtr resultsDoc(new json::Object);
  bool errorSet(false);
  json::Array resultsContent;
  (*resultsDoc)["content"] = json::Array();
  if (fromSource == "tvshows") {
    const std::string& key = query.first;
    const std::string& value = query.second;
    const json::Array& content = (*doc())["content"];
    json::Array::const_iterator tvshowIt(content.Begin());
    const json::Array::const_iterator end(content.End());
    try {
      for (; tvshowIt!=end; ++tvshowIt) {
	const json::Object& tvshow = *tvshowIt;
	const json::String& tvshowValue = tvshow[key];
	if (tvshowValue == value)
	  resultsContent.Insert(tvshow);
      }
    } catch (const json::Exception& e) {
      // probably the key is not part of the tvshow object
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

