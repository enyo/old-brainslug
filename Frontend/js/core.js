
 // Global Brainslug namespace.
var BS = {
  pages: [],
  pagesToBuild: [],
  currentPage: null
};


var YES = true;
var NO = false;


// Will include the right files in the future. For now, it does nothing.
var bs_require = function() { };


document.observe('dom:loaded', function() {
  BS.pagesToBuild.each(function(Page) {
    var page = new Page();
    BS.pages[page.id] = page;
  });
  BS.pages.home.show();
});