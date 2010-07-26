// ==========================================================================
// Project:   Brainslug.MovieGridItemView
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

/** @class

  Used to display a movie in the grid view.

  @extends SC.View
*/
Brainslug.MovieGridItemView = SC.View.extend(
  SC.StaticLayout,
  SC.Control,
/** @scope Brainslug.MovieGridItemView.prototype */ {


  /**
    The content object the list item will display.
    
    @type SC.Object
  */
  content: null,
  
  childViews: 'label image'.w(),

  classNames: 'movie',

  label: SC.LabelView.design({
    layout: { top: 0, height: 20, right: 0, centerX: 0 },
    valueBinding: '.parentView.content.name'
  }),
  
  image: SC.ImageView.design({
    layout: { top: 20, centerX: 0, height: 160 },
    valueBinding: '.parentView.content.coverUrl'
  })
  
});

