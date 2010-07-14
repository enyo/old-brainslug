
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
      case 'keyEnter':
        if (this.activeLink) {
          eval(this.activeLink.readAttribute('_action'));
          return YES;
        }
        break;
    }
    return NO;
  },

  didBecomeFirstResponder: function() {
    this.selectFirstLink();
  },


  selectFirstLink: function() {
    this.deactivateActiveLink();
    return this.activateLink(this.element.down('a'));
  },


  selectNextLink: function() {
    var activeLink = this.activeLink,
      nextLink;


    if (activeLink) {
      nextLink = activeLink.next('a');
    }
    if (!nextLink) {
      nextLink = this.element.down('a');
    }

    if (this.activateLink(nextLink)) {
      this.deactivateLink(activeLink);
      return YES;
    }

    return NO;
  },

  selectPreviousLink: function() {
    var activeLink = this.activeLink,
      previousLink;


    if (activeLink) {
      previousLink = activeLink.previous('a');
    }
    if (!previousLink) {
      previousLink = this.element.select('a').last();
    }

    if (this.activateLink(previousLink)) {
      this.deactivateLink(activeLink);
      this.activeLink = previousLink;
      return YES;
    }

    return NO;

  },



  activateLink: function(element) {
    if (!element) return NO;
    this.activeLink = element;
    element.addClassName('active');
    return YES;
  },
  deactivateLink: function(element) {
    if (!element) return NO;
    element.removeClassName('active');
    return YES;
  },

  deactivateActiveLink: function() {
    this.deactivateLink(this.activeLink);
  }


})