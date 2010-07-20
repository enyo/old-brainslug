// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

/** @namespace

  The TV Shows responder
  
  @extends SC.Responder
*/
Brainslug.TV_SHOWS = SC.Responder.create({

  nextResponder: 'READY',
  
  didBecomeFirstResponder: function() {
    Brainslug.getPath('mainPage.tvShows').appendAndMakeMainPane() ;
  },

  willLoseFirstResponder: function() {
  }

});
