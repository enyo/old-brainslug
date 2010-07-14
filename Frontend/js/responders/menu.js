
bs_require('foundation/responder');

BS.MenuResponder = Class.create(BS.Responder, {


  tryToPerform: function(action) {
    switch(action) {
      case 'keyRight':
        return this.selectNextLink();
        break;
    }
  },

  focus: function() {
    this.selectNextLink();
  },

  selectNextLink: function() {
    var activeLink = this.element.down('a.active'),
      nextLink;

    if (activeLink) {
      nextLink = activeLink.next('a');
      activeLink.removeClassName('active');
    }

    if (!nextLink) {
      nextLink = this.element.down('a');
      if (!nextLink) return NO;
    }

    nextLink.addClassName('active');
    
    return YES;
  }

})