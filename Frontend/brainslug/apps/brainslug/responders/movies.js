// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

require("models/movie")

/** @namespace

  The movies responder
  
  @extends SC.Responder
*/
Brainslug.MOVIES = SC.Responder.create({

  nextResponder: 'READY',
  
  didBecomeFirstResponder: function() {
    var movies = Brainslug.store.find(Brainslug.ALL_MOVIES_QUERY);
    Brainslug.moviesController.set('content', movies)
    Brainslug.getPath('mainPage.movies').appendAndMakeMainPane() ;
  },

  willLoseFirstResponder: function() {
  }

});
