// ==========================================================================
// Project:   Brainslug.MainPane
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  (Document Your View Here)

  @extends SC.View
*/
Brainslug.MainPane = SC.MainPane.extend(
/** @scope Brainslug.MainPane.prototype */ {

  // All actions are rerouted to the application, which in return goes up the
  // responder chain, by starting with the firstResponder (in this case, Brainslug.HOME),
  // and going up, until it reaches Brainslug again.
  defaultResponder: Brainslug,
  
  isBrainslugMainPane: YES, // temporary debug. Delete this.
  
  /**
    As soon as the pane gets a main pane, the class inactive will be removed
  */
  classNames: 'inactive'.w(),

  /**
    Add or remove the hidden class, depending on the `isMainPane` state
  */
  updateClassNames: function() {
    var layer = this.get('layer');
    if (layer) {
      if (this.get('isMainPane')) {
          SC.Logger.log("Removing class inactive");
          this.classNames.removeObject('inactive');
      }
      else {
        SC.Logger.log("Adding class inactive");
        if (this.classNames.indexOf('inactive') === -1) {
          // Class doesn't exist -> Add it.
          this.classNames.push('inactive');
        }
      }
      this.displayDidChange();
      this.updateLayerIfNeeded();
    }
  },


  _didAppendToDocument: NO,

  isMainPaneDidChange: function() {
    // Make sure the class names get updated only _after_ the layer has been created and inserted in the dom.
    // If not, there is no animation.
    if (this._didAppendToDocument) {
      this.updateClassNames();
    }
  }.observes('isMainPane'),

  didAppendToDocument: function() {
    var appearFunction = function() {
      this.updateClassNames();
      this._didAppendToDocument = YES;
    };
    appearFunction.invokeLater(this);
  },

  /**
    The first time the pane only gets appended, which automatically makes it the main pane.
    After that, making it the main pane is called manually.
  */
  appendAndMakeMainPane: function() {
    if (!this.get('layer')) this.append();
    else this.rootResponder.makeMainPane(this);
  }

});
