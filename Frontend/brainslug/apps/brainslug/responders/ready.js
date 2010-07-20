// ==========================================================================
// Project:   Brainslug
// Copyright: ©2009 Matthias Loitsch
// ==========================================================================
/*globals Brainslug */

/** @namespace

  The ready state
  
  @extends SC.Responder
*/
Brainslug.READY = SC.Responder.create({

  nextResponder: Brainslug,
  
  didBecomeFirstResponder: function() {

  }

});
