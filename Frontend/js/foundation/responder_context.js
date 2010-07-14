
bs_require('system/object');

BS.ResponderContext = Class.create(BS.Object, {

  initialize: function() {
    this.responderChain = [];
  },

  /**
   * Returns the responder that handled an action.
   */
  sendAction: function(action) {
    return this.responderChain.first().tryToPerform(action);
  }

})