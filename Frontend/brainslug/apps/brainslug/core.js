// ==========================================================================
// Project:   Brainslug
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @namespace

  My cool new app.  Describe your application.
  
  @extends SC.Object
*/
Brainslug = SC.Application.create(
  /** @scope Brainslug.prototype */ {

  NAMESPACE: 'Brainslug',
  VERSION: '0.1.0',

  // This is your application store.  You will use this store to access all
  // of your model data.  You can also set a data source on this store to
  // connect to a backend server.  The default setup below connects the store
  // to any fixtures you define.
  store: SC.Store.create().from(SC.Record.fixtures)
  
  // TODO: Add global constants or singleton objects needed by your app here.

}) ;


Brainslug.mixin({
  showHome: function() {
    SC.Logger.log("Home");
    this.makeFirstResponder(Brainslug.HOME);
  },
  showMovies: function() {
    SC.Logger.log("Movies");
    this.makeFirstResponder(Brainslug.MOVIES);
  },
  showTvShows: function() {
    SC.Logger.log("TV Shows");
    this.makeFirstResponder(Brainslug.TV_SHOWS);
  }
});