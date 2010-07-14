
 // Global Brainslug namespace.
var BS = {
  pages: [],

  pagesToBuild: [],

  currentPage: null,

  sendAction: function(action, context) {
    if (this.currentPage && this.currentPage.sendAction) this.currentPage.sendAction(action, context);
  }
};


var YES = true;
var NO = false;


// Will include the right files in the future. For now, it does nothing.
var bs_require = function() { };


document.observe('dom:loaded', function() {
  BS.application = new BS.Application();
  BS.application.setupPages();
});
