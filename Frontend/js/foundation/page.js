
bs_require('foundation/responder');

BS.Page = Class.create(BS.Responder, BS.ResponderContext, {

  /** Walk like a duck */
  isPage: true,

  nextResponder: null,

  defaultResponder: null,


  initialize: function($super) {

    $super();

    this.nextResponder = BS.application;

    this.element = $(this.id);

    this.element.select('._responder').each(function(responderElement) {

      var responderClass = responderElement.readAttribute('_responderClass');;

      if (!responderClass) responderClass = 'Responder';

      if (!BS[responderClass]) throw ('Unknown responder class "' + responderClass + '"');

console.log(responderClass);

      responderElement._responder = new BS[responderClass]();
      responderElement._responder.element = responderElement;
      responderElement._responder.page = this;
      responderElement._responder.nextResponder = this;

    }, this);

  },

  show: function() {
    var firstResponderElement;

    if (BS.currentPage) { 
      if (BS.currentPage == this) return; // Already visible
      BS.currentPage.hide();
    }

    BS.currentPage = this;

    this.element.removeClassName('hidden');
    this.element.addClassName('visible');


    firstResponderElement = this.element.down('._defaultResponder') || this.element.down('._responder');
    if (firstResponderElement) firstResponderElement._responder.becomeFirstResponder();
  },

  hide: function() {
    // Normally BS.currentPage should never be null, because there's always a page showing.
    // This is just to test if nothing shows, if, maybe, some page has been hidden, without another page showing.
    BS.currentPage = null;
    if (this.firstResponder) this.firstResponder.resignFirstResponder();
    this.element.removeClassName('visible');
    this.element.addClassName('hidden');
    console.log('hiding ' + this.id);
  },


  makeFirstResponder: function(responder) {
    this.defaultResponder = responder;
    responder.didBecomeFirstResponder();
  }
  
});