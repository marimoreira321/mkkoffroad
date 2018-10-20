$(document).ready(function () {
    var scroll = $('.scroll');
    var fade = $('.scroll-fade');
    var prlx = $('.parallax');
    var position;
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
});