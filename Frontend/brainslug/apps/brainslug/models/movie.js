// ==========================================================================
// Project:   Brainslug.Movie
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  A Movie model.

  @extends SC.Record
  @version 0.1
*/
Brainslug.Movie = SC.Record.extend(
/** @scope Brainslug.Movie.prototype */ {

  primaryKey: 'id',

  // Is probably just the imdbId.
  id: SC.Record.attr(String, { isRequired: YES }),

  imdbId: SC.Record.attr(String, { isRequired: YES }),

  name: SC.Record.attr(String, { isRequired: YES }),

  coverUrl: SC.Record.attr(String, { isRequired: YES }),

  sources: SC.Record.toMany("Brainslug.MovieSource", {
    inverse: "movie", isMaster: YES
  })

}) ;


Brainslug.ALL_MOVIES_QUERY = SC.Query.local(Brainslug.Movie, {
  recordType: Brainslug.Movie
});