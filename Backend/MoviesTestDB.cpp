#include "MoviesTestDB.h"

MoviesTestDB::MoviesTestDB()
: _doc(new json::Object ) {
  json::Array movies;
  {
    json::Object movie;
    movie["id"] = json::String("1");
    movie["name"] = json::String("Sex and the City");
    movie["imdbId"] = json::String("tt10000774");
    movie["coverUrl"] = json::String("http://www.pursepage.com/wp-content/uploads/2008/01/sex-and-the-city-movie-poster.jpg");
    movies.Insert(movie);
  }
  {
    json::Object movie;
    movie["id"] = json::String("2");
    movie["name"] = json::String("Twilight");
    movie["imdbId"] = json::String("tt1099212");
    movie["coverUrl"] = json::String("http://juiceboxdotcom.com/wp-content/themes/mimbo2.2/images//twilight-movie-poster.jpg");
    movies.Insert(movie);
  }
  (*_doc)["content"] = movies;
  (*_doc)["error"] = json::Null();
}

JSONObjectPtr MoviesTestDB::select(const std::string& fromSource) const {
  if (fromSource == "movies")
    return _doc;
  else {
    JSONObjectPtr resultsDoc(new json::Object);
    (*resultsDoc)["error"] = json::String(std::string("unrecognized db source: ") + fromSource);
    return resultsDoc;
  }
}

JSONObjectPtr MoviesTestDB::selectWhere(const std::string& fromSource, const std::pair<const std::string,const std::string>& query) const {
  JSONObjectPtr resultsDoc(new json::Object);
  if (fromSource == "movies") {
    const std::string& key = query.first;
    const std::string& value = query.second;
    const json::Array& content = (*_doc)["content"];
    json::Array::const_iterator movieIt(content.Begin());
    const json::Array::const_iterator end(content.End());
    try {
      for (; movieIt!=end; ++movieIt) {
	const json::Object& movie = *movieIt;
	const json::String& movieValue = movie[key];
	if (movieValue == value) {
	  (*resultsDoc)["content"] = movie;
	  (*resultsDoc)["error"] = json::Null();
	  break;
	}
      }
    } catch (const json::Exception& e) {
      // probably the key is not part of the movie object
      (*resultsDoc)["error"] = json::String(e.what());
    }
  } else
    (*resultsDoc)["error"] = json::String(std::string("unrecognized db source: ") + fromSource);
  return resultsDoc;
}

