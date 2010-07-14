
bs_require('system/object');

BS.ResponderContext = {

  defaultResponder: null,

  /**
   * Returns the responder that handled an action or null;
   */
  sendAction: function(action, context) {
    var handled = NO,
      nextResponder = this.getDefaultResponder();


    while (!handled && nextResponder) {

      if (nextResponder.tryToPerform) {
        handled = nextResponder.tryToPerform(action, context);
      }
      else { handled = NO; }

      if (!handled) {
        nextResponder = this.getNextResponderFor(nextResponder);
      }
    }

    if (!handled) return null;
    
    return nextResponder;
  },

  getDefaultResponder: function() {
    return this.defaultResponder;
  },

  getNextResponderFor: function(responder) {
    return responder.getNextResponder();
  }

};