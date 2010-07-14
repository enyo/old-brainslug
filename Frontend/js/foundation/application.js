
bs_require('foundation/responder');

BS.Application = Class.create(BS.Responder, {

  /** Walk like a duck */
  isApplication: YES,

  setupPages: function() {
    BS.pagesToBuild.each(function(Page) {
      var page = new Page();
      BS.pages[page.id] = page;
    });
    BS.pages.home.show();
  },

  tryToPerform: function(action) {
    console.log("Action '" + action + "' could not be handled.");
    return NO;
  }
  
});