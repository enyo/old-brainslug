// ==========================================================================
// Project:   Brainslug - mainPage
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */


require("panes/main");
require("views/movie_grid_item");


// This page describes the main user interface for your application.  
Brainslug.mainPage = SC.Page.design({

  home: Brainslug.MainPane.design({

    layout: { width: 1280, height: 720, centerX: 0, centerY: 0 },

    classNames: 'home'.w(),

    childViews: 'menu'.w(),

    menu: SC.View.design({
      layout: { top: 200, right: 40, height: 100, left: 40 },
      childViews: 'moviesButton tvShowsButton'.w(),
      classNames: 'main-menu'.w(),

      moviesButton: Brainslug.MenuButtonView.design({
        layout: { bottom: 0, height: 50, width: 300, left: 20 },
        title: 'Movies',
        action: 'showMovies'
      }),

      tvShowsButton: Brainslug.MenuButtonView.design({
        layout: { bottom: 0, height: 50, width: 300, left: 320 },
        title: 'TV Shows',
        action: 'showTvShows'
      })

    }),

    /**
      The first time the pane gets created, the movies button should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('menu.moviesButton').becomeFirstResponder();
    }


  }),


  movies: Brainslug.MainPane.design({

    layout: { width: 1280, height: 720, centerX: 0, centerY: 0 },

    classNames: 'movies'.w(),

    childViews: 'homeButton movieList'.w(),


    homeButton: Brainslug.MenuButtonView.design({
      layout: { top: 10, height: 50, width: 300, centerX: 0 },
      title: 'Movies | Home',
      action: 'showHome'
    }),

    movieList: SC.GridView.design({
      layout: { top: 100, left: 20, right: 20, bottom: 40 },

      rowHeight: 180,
      columnWidth: 150,

      contentBinding: 'Brainslug.moviesController.arrangedObjects',
      selectionBinding: 'Brainslug.moviesController.selection',
      
      exampleView: Brainslug.MovieGridItemView
    }),

    /**
      The first time the pane gets created, the movies button should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('homeButton').becomeFirstResponder();
    }

  }),
  
  tvShows: Brainslug.MainPane.design({

    layout: { width: 1280, height: 720, centerX: 0, centerY: 0 },

    classNames: 'tv-shows'.w(),

    childViews: 'homeButton'.w(),
    
    homeButton: Brainslug.MenuButtonView.design({
      layout: { centerY: 0, height: 50, width: 300, centerX: 0 },
      title: 'TV Shows | Home',
      action: 'showHome'
    }),

    /**
      The first time the pane gets created, the movies button should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('homeButton').becomeFirstResponder();
    }

  })
  

});
