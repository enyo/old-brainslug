#include "MoviesTestDB.h"

MoviesTestDB::MoviesTestDB() 
  : TestDB("movies") {
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
  (*doc())["content"] = movies;
  (*doc())["error"] = json::Null();
}

