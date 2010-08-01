// ==========================================================================
// Project:   Brainslug.Episode
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  An episode has a link to its season & tv show, which is redundant (link to season
  would suffice), but makes it a lot easier to display all episodes for a tv show.

  @extends SC.Record
  @version 0.1
*/
Brainslug.Episode = SC.Record.extend(
/** @scope Brainslug.Episode.prototype */ {

  primaryKey: 'id',

  // Is probably just the imdbId.
  id: SC.Record.attr(String, { isRequired: YES }),

  imdbId: SC.Record.attr(String, { isRequired: YES }),

  // The episode number, starting from 1
  number: SC.Record.attr(Number, { isRequired: YES }),

  // The episode name
  name: SC.Record.attr(String, { isRequired: YES }),

  // If available, an image for the episode.
  imageUrl: SC.Record.attr(String, { isRequired: NO }),

  season: SC.Record.toOne("Brainslug.Season", { 
      inverse: "episodes", isMaster: NO 
  }),

  tvShow: SC.Record.toOne("Brainslug.TvShow", { 
      inverse: "episodes", isMaster: NO 
  })

}) ;


Brainslug.ALL_EPISODES_QUERY = SC.Query.local(Brainslug.Episode, {
  recordType: Brainslug.Episode
});