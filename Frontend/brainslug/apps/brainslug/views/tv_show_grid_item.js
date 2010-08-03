// ==========================================================================
// Project:   Brainslug.MovieGridItemView
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  Used to display a tv show in the grid view.

  @extends SC.View
*/
Brainslug.TvShowGridItemView = SC.View.extend(
  SC.StaticLayout,
  SC.Control,
/** @scope Brainslug.TvShowGridItemView.prototype */ {


  /**
    The content object the list item will display.
    
    @type SC.Object
  */
  content: null,
  
  childViews: 'label image'.w(),

  classNames: 'tv-show',

  label: SC.LabelView.design({
    layout: { top: 0, height: 20, right: 0, left: 0 },
    valueBinding: '.parentView.content.name'
  }),
  
  image: SC.ImageView.design({
    layout: { top: 20, centerX: 0, width: 130, height: 130 },
    valueBinding: '.parentView.content.coverUrl'
  })
  
});

