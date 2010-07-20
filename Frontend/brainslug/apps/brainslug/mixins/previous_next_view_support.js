// ==========================================================================
// Project:   Brainslug.PreviousNextViewSupport
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  The PreviousNextViewSupport adds the nextView and previousView properties.

  @extends SC.View
*/
Brainslug.PreviousNextViewSupport = {


  nextView: function() {
    var parentView = this.get('parentView'),
      children, childLen, viewPosition;
    
    if (parentView) {
      children = parentView.get('childViews');
      
      viewPosition = children.indexOf(this);

      if (children[viewPosition + 1]) return children[viewPosition + 1];
    }

    return null;
  }.property('parentView'),

  previousView: function() {
    var parentView = this.get('parentView'),
      children, childLen, viewPosition;
    
    if (parentView) {
      children = parentView.get('childViews');
      
      viewPosition = children.indexOf(this);

      if (children[viewPosition - 1]) return children[viewPosition - 1];
    }

    return null;
  }.property('parentView')




};
