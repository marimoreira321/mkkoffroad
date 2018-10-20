#!/bin/bash
    cd $PWD
    browserify ./blog/wp-content/themes/myMiniFramework/js/script.js -t [ babelify --presets [es2015 ] ] -o ./blog/wp-content/themes/myMiniFramework/js/script.min.js
    browserify ./assets/js/main.js -t [ babelify --presets [es2015 ] ] -o ./assets/js/main.min.js