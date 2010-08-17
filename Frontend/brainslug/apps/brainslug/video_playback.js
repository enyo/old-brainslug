// ==========================================================================
// Project:   Brainslug
// Copyright: ©2010 My Company, Inc.
// ==========================================================================
/*globals Brainslug */

require('main');

// This file adds video playback to the Brainslug object.
Brainslug.videoPlayback = {

  start: function(videoUrl) {
    Brainslug.getPath('mainPage.videoPlayback').appendAndMakeMainPane();


    $(Brainslug.getPath('mainPage.videoPlayback.videoContainer').get('layer')).html(
      QT_GenerateOBJECTText_XHTML(videoUrl, '100%', '100%', '',
        'autoplay', 'true',
        'scale', 'aspect',
        'EnableJavaScript', 'True',
        'BgColor', '#000000',
        'controller', 'false'));
  }

} ;

