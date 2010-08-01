// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

require("models/tv_show")

/** @namespace

  The TV Shows responder
  
  @extends SC.Responder
*/
Brainslug.TV_SHOWS = SC.Responder.create({

  nextResponder: 'READY',
  
  didBecomeFirstResponder: function() {
    var tvShows = Brainslug.store.find(Brainslug.ALL_TV_SHOWS_QUERY);
    Brainslug.tvShowsController.set('content', tvShows)
    Brainslug.getPath('mainPage.tvShows').appendAndMakeMainPane() ;
  },

  willLoseFirstResponder: function() {
  }

});
