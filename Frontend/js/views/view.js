
bs_require('foundation/responder');

BS.View = Class.create(BS.Responder, {

  initialize: function(param) {
    console.log(this.childViews);
  }

})