$(document).ready(function () {
    var scroll = $('.scroll');
    var fade = $('.scroll-fade');
    var prlx = $('.parallax');
    scroll.on('click', function (e) {
        e.preventDefault();
        var scrollTo = $(this).data('scrollTo');
        console.log(scrollTo);
        var ofst = position = $('#' + scrollTo).offset().top;
        if ($(this).parents('.menu').length > 0) {
            position -= $(this).innerHeight() - 10;
        }
        $('html, body').animate({
            scrollTop: position
        }, 500, );
    });

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
