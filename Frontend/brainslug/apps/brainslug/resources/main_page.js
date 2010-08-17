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

    classNames: 'home'.w(),

    childViews: 'menu'.w(),

    menu: SC.View.design({
      layout: { top: 150, right: 40, height: 100, left: 40 },
      childViews: 'buttons'.w(),

      classNames: 'main-menu'.w(),

      buttons: SC.View.design({

        layout: { bottom: 0, centerX: 0, width: 650, height: 100 },

        childViews: 'moviesButton tvShowsButton'.w(),

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
      })

    }),

    /**
      The first time the pane gets created, the movies button should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('menu.buttons.moviesButton').becomeFirstResponder();
    }


  }),


  movies: Brainslug.MainPane.design({

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

//      actOnSelect: YES,

      exampleView: Brainslug.MovieGridItemView,

      action: 'playMovie'
    }),

    /**
      The first time the pane gets created, the movie list should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('movieList').becomeFirstResponder();
    }

  }),
  
  tvShows: Brainslug.MainPane.design({

    classNames: 'tv-shows'.w(),

    childViews: 'homeButton tvShowList'.w(),
    
    homeButton: Brainslug.MenuButtonView.design({
      layout: { top: 0, height: 50, width: 300, centerX: 0 },
      title: 'TV Shows | Home',
      action: 'showHome'
    }),


    tvShowList: SC.GridView.design({
      layout: { top: 100, left: 20, right: 20, bottom: 40 },

      rowHeight: 150,
      columnWidth: 150,

      contentBinding: 'Brainslug.tvShowsController.arrangedObjects',
      selectionBinding: 'Brainslug.tvShowsController.selection',
      
      exampleView: Brainslug.TvShowGridItemView
    }),

    /**
      The first time the pane gets created, the movie list should become the first responder
    */
    didCreateLayer: function() {
      this.getPath('tvShowList').becomeFirstResponder();
    }

  }),

  videoPlayback: Brainslug.MainPane.design({

    classNames: 'video-playback'.w(),

    childViews: 'videoContainer'.w(),

    videoContainer: SC.View.design({

    })

  })
  

});
