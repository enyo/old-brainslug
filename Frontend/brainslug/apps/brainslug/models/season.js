// ==========================================================================
// Project:   Brainslug.Season
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  A TV show consists of multiple seasons, that contain episodes. A TV show has
  references to the episodes too, so it's not necessary to get the seasons if
  you're only interested in the episodes.

  @extends SC.Record
  @version 0.1
*/
Brainslug.Season = SC.Record.extend(
/** @scope Brainslug.Season.prototype */ {

  primaryKey: 'id',

  id: SC.Record.attr(String, { isRequired: YES }),

  // The episode number, starting from 1
  number: SC.Record.attr(Number, { isRequired: YES }),

  coverUrl: SC.Record.attr(String, { isRequired: YES }),

  tvShow: SC.Record.toOne("Brainslug.TvShow", { 
      inverse: "seasons", isMaster: NO 
  }),

  episodes: SC.Record.toMany("Brainslug.Episode", { 
    inverse: "season", isMaster: YES 
  })

}) ;


Brainslug.ALL_TV_SHOWS_QUERY = SC.Query.local(Brainslug.TvShow, {
  recordType: Brainslug.TvShow
});