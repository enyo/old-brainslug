// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

/** @namespace

  The movies responder
  
  @extends SC.Responder
*/
Brainslug.MOVIES = SC.Responder.create({

  nextResponder: 'READY',
  
  didBecomeFirstResponder: function() {
    Brainslug.getPath('mainPage.movies').appendAndMakeMainPane() ;
  },

  willLoseFirstResponder: function() {
  }

});
