
bs_require('system/object');

BS.Responder = Class.create(BS.Object, {

  initialize: function(element) {
    this.element = element;
  },


  /**
   * If you can perform an action, return YES here.
   */
  tryToPerform: function(action) {
    return NO;
  },


  focus: function() {
    
  }

})