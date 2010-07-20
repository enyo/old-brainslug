// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

/** @namespace

  The home responder
  
  @extends SC.Responder
*/
Brainslug.HOME = SC.Responder.create({

  nextResponder: 'READY',
  
  didBecomeFirstResponder: function() {
    Brainslug.getPath('mainPage.home').appendAndMakeMainPane();
  },

  willLoseFirstResponder: function() {
  }

});
