// ==========================================================================
// Project:   Brainslug.SelectOnMouseoverSupport
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  The SelectOnMouseoverSupport can be added to any exampleView of
  CollectionViews to make them selected on mouseover.

  @extends SC.View
*/
Brainslug.SelectOnMouseoverSupport = {


  mouseOver: function() {
    var parentView = this.get('parentView'),
      index = parentView.contentIndexForLayerId(this.get('layerId'));
      parentView.select(index);
  }



};
