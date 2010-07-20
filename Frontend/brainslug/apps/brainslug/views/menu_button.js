// ==========================================================================
// Project:   Brainslug.MenuButtonView
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

require("mixins/previous_next_view_support");

/** @class

  The MenuButton behaves like a normal button, but 

  @extends SC.View
*/
Brainslug.MenuButtonView = SC.ButtonView.extend(/** @scope Brainslug.MenuButton.prototype */
  Brainslug.PreviousNextViewSupport, {

  classNames: 'menu-button'.w(),
  

  acceptsFirstResponder: function() {
    return this.get('isEnabled');
  }.property('isEnabled'),

  /** @private */
  keyDown: function(evt) {
    var view;

    switch(evt.which) {
      case 39: // Right
        view = this.get('nextValidKeyView');
        if (view) view.becomeFirstResponder();
        break;
      case 37: // Left
        view = this.get('previousValidKeyView');
        if (view) view.becomeFirstResponder();
        break;
      case 13: // Enter
        // If this button is disabled, we have nothing to do
        if (!this.get('isEnabled')) return NO;
        this.triggerAction(evt);
        break;
      default: return NO; // Not handled.
    }

    return YES;
  },


  /**
    Avoiding the delay
  */
  triggerAction: function(evt) {
    this._runAction(evt);
    this.didTriggerAction();
  },

  nextValidKeyView: function() {
    var ret = this.get('nextKeyView');
    
    if(!ret) { ret = this.get('nextView'); }
    
    return ret ;
  }.property('nextKeyView'),


  previousValidKeyView: function() {
    var ret = this.get('previousKeyView');
    
    if(!ret) { ret = this.get('previousView'); }
    
    return ret ;
  }.property('previousKeyView')
  

});
