$(document).ready(function () {
    $('#s').attr('placeholder', 'Buscar..');
    /**
     * Sets link in post page to open in a new window.
     */
    $('#the_post a').attr("target", "_blank");
    // Window height getter
    var wh = $(window).innerHeight();
    // Windows width getter
    var ww = $(window).innerWidth();
    //---
    $(window).on('resize', function () {
        console.log(ww);
        // Window height getter
        wh = $(window).innerHeight();
        // Windows width getter
        ww = $(window).innerWidth();
    });

    /**
     * This sections configures the parallax fx in the #pg-header
     */
    $(window).scroll(function () {
        /**
         * This is the amount of page scrolling
         */
        var yPos = $(this).scrollTop();
        /**
         * Amount to move the background image
         * + moves the image same scrolling direction
         * - does reverse scrolling
         */
        var move = -(yPos / $('.parallax').data('speed'));
        /**
         * Sets up the parallax
         */
        $('.parallax').css('top', move + 'px');

        /**
         * Sets up the opacity of the hideOnScroll
         *  element relative to its own height.
         */
        var opacity = 1 - yPos / $('.hideOnScroll').innerHeight();
        /**
         * Activate the hideOnScroll property.
         */
        $('.hideOnScroll').css('opacity', opacity);

        /**
         * Navbar background update
         */
        if (yPos > 1) {
            $('#navbar').addClass('bg-gradient');
        } else {
            $('#navbar').removeClass('bg-gradient');
        }


    });

    console.log(ww);
    //---

    //---
});