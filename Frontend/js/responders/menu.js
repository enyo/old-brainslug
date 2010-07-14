
bs_require('foundation/responder');

BS.MenuResponder = Class.create(BS.Responder, {

  tryToPerform: function(action) {
    switch(action) {
      case 'keyRight':
        return this.selectNextLink();
        break;
      case 'keyLeft':
        return this.selectPreviousLink();
        break;
    }
    return NO;
  },

  didBecomeFirstResponder: function() {
    this.selectNextLink();
  },

  selectNextLink: function() {
    var activeLink = this.element.down('a.active'),
      nextLink;

    if (activeLink) {
      nextLink = activeLink.next('a');
      this.deactivateLink(activeLink);
    }

    if (!nextLink) {
      nextLink = this.element.down('a');
      if (!nextLink) return NO;
    }

    this.activateLink(nextLink);
    
    return YES;
  },

  selectPreviousLink: function() {
    var activeLink = this.element.down('a.active'),
      previousLink;

    if (activeLink) {
      previousLink = activeLink.previous('a');
    }

    if (!previousLink) {
      previousLink = this.element.select('a').last();
      if (!previousLink) return NO;
    }

    this.activateLink(previousLink);
    this.deactivateLink(activeLink);

    
    return YES;
  },



  activateLink: function(element) {
    element.addClassName('active');
  },
  deactivateLink: function(element) {
    element.removeClassName('active');
  },

  deactivateActiveLink: function() {
  }


})