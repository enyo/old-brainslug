
$(document).observe('keydown', function(event) {
  var action;

  switch (event.keyCode) {
    case 38: action = 'keyUp'; break;
    case 40: action = 'keyDown'; break;
    case 37: action = 'keyLeft'; break;
    case 39: action = 'keyRight'; break;
    case 13: action = 'keyEnter'; break;
    case 32:
    case 27: action = 'keyMenu'; break;
  }

  if (action) {
    event.stop();
    BS.sendAction(action);
  }

})
