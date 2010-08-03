// ==========================================================================
// Project:   Brainslug.TvShow
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  A TV show model.

  @extends SC.Record
  @version 0.1
*/
Brainslug.TvShow = SC.Record.extend(
/** @scope Brainslug.TvShow.prototype */ {

  primaryKey: 'id',

  // Is probably just the imdbId.
  id: SC.Record.attr(String, { isRequired: YES }),

  imdbId: SC.Record.attr(String, { isRequired: YES }),

  name: SC.Record.attr(String, { isRequired: YES }),

  coverUrl: SC.Record.attr(String, { isRequired: YES }),

  seasons: SC.Record.toMany("Brainslug.Season", { 
    inverse: "tvShow", isMaster: YES 
  }),

  episodes: SC.Record.toMany("Brainslug.Episode", { 
    inverse: "tvShow", isMaster: YES 
  })


}) ;


Brainslug.ALL_TV_SHOWS_QUERY = SC.Query.local(Brainslug.TvShow, {
  recordType: Brainslug.TvShow
});