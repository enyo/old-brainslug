
Object.extend(BS, {
  
  keyDown: function(event) {
    console.log('down');
  },
  keyUp: function(event) {
    console.log('up');
  },
  keyLeft: function(event) {
    event.stop();
    console.log('left');
  },
  keyRight: function(event) {
    event.stop();
    BS.currentPage.sendAction('keyRight');
    console.log('right');
  },
  keyEnter: function(event) {
    console.log('enter');
  },
  keyMenu: function(event) {
    console.log('menu');
  }
  
});


$(document).observe('keydown', function(event) {
  switch (event.keyCode) {
    case 38: BS.keyUp(event); return;
    case 40: BS.keyDown(event); return;
    case 37: BS.keyLeft(event); return;
    case 39: BS.keyRight(event); return;
    case 13: BS.keyEnter(event); return;
    case 32:
    case 27: BS.keyMenu(event); return;
  }
})
