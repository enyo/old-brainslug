
bs_require('foundation/responder');

BS.Page = Class.create(BS.ResponderContext, {

  initialize: function($super) {

    $super();

    this.element = $(this.id);
    this.element.select('._responder').each(function(responderElement) {
      var rank = responderElement.readAttribute('_responderRank'),
        responderClass = responderElement.readAttribute('_responderClass');;
      if (!rank) rank = 0;
      if (!responderClass) responderClass = 'Responder';
      else responderClass = responderClass + 'Responder';
console.log(responderClass);
      if (this.responderChain[rank]) throw "You specified the same responder rank twice!";

      this.responderChain[rank] = new BS[responderClass](responderElement);
    }, this);

    if (this.responderChain.size() === 0) throw ('You forgot to define a responder in element "' + this.id + '"!');

    this.responderChain.first().focus();

  },

  show: function() {
    if (BS.currentPage) { 
      if (BS.currentPage == this) return; // Already visible
      BS.currentPage.hide();
    }

    BS.currentPage = this;

    this.element.removeClassName('hidden');
    this.element.addClassName('visible');
  },
  
  hide: function() {
    // Normally BS.currentPage should never be null, because there's always a page showing.
    // This is just to test if nothing shows, if, maybe, some page has been hidden, without another page showing.
    BS.currentPage = null;
    this.element.removeClassName('visible');
    this.element.addClassName('hidden');
  }
  
});