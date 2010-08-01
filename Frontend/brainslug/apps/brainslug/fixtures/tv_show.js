// ==========================================================================
// Project:   Brainslug.TvShow Fixtures
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

sc_require('models/tv_show');

Brainslug.TvShow.FIXTURES = [

  {
    id: "show-1",
    imdbId: "abcd1",
    name: "Desperate Housewives",
    coverUrl: "http://getvideoartwork.com/gallery/main.php?g2_view=core.DownloadItem&g2_itemId=8131&g2_serialNumber=2",
    seasons: [ "s-1", "s-2" ],
    episodes: [ "e-1", "e-2", "e-3" ]
  },

  {
    id: "show-2",
    imdbId: "abcd2",
    name: "Sex and the city",
    coverUrl: "http://getvideoartwork.com/gallery/main.php?g2_view=core.DownloadItem&g2_itemId=70729&g2_serialNumber=1",
    seasons: [ "s-3", "s-4" ],
    episodes: [ "e-4", "e-5", "e-6", "e-7" ]
  }


];
