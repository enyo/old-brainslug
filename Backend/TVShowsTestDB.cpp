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


