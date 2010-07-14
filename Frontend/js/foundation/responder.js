
bs_require('system/object');

BS.Responder = Class.create(BS.Object, {


  /** Walk like a duck */
  isResponder: YES,

  initialize: function() {
    this.nextResponder = null;
  },

  /**
   * If you can handle an action, return YES here, otherwise, no.
   */
  tryToPerform: function(action) {
    return NO;
  },


  focus: function() {
    
  },

  getNextResponder: function() {
    return this.nextResponder;
  },

  becomeFirstResponder: function() {
    this.page.makeFirstResponder(this);
  },

  resignFirstResponder: function() {
    BS.firstResponder = null;
  },

  didBecomeFirstResponder: function() { }

});