global.$ = require('jquery');
require('bootstrap');
require('./partials/smoothScroll.js');
$(document).ready(function () {


    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 20) {
            $('.menu').addClass('bg-black-a');
        } else {
            $('.menu').removeClass('bg-black-a');
        }
        var st = $(this).scrollTop();
        var wh = $('body').innerHeight();
        var op = 1 - ((st) / wh) * 20;
        var bgp = '15% ' + st / 5 + 'px';
        op <= 0 ? $(fade).hide() : $(fade).show();

        fade.css('opacity', op);
        prlx.css('background-position', bgp);
    });

    if ($(window).innerWidth() < 574) {
        $('.menu').on('click', function () {
            var height = $(this).children('.menu-item').innerHeight() * ($(this).children('.menu-item').length + 1);
            $(this).toggleClass('opened');
            if ($(this).hasClass('opened')) {
                $(this).css('min-height', height + 'px');
            } else {
                $(this).css('min-height', 0 + 'px');
            }
        });
    }
});
