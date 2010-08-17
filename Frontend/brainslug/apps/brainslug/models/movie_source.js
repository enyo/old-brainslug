// ==========================================================================
// Project:   Brainslug.MovieSource
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  (Document your Model here)

  @extends SC.Record
  @version 0.1
*/
Brainslug.MovieSource = SC.Record.extend(
/** @scope Brainslug.MovieSource.prototype */ {


  primaryKey: 'id',

  id: SC.Record.attr(String, { isRequired: YES }),

  url: SC.Record.attr(String, { isRequired: YES }),

  movie: SC.Record.toOne("Brainslug.Movie", {
      inverse: "sources", isMaster: NO
  })


}) ;
