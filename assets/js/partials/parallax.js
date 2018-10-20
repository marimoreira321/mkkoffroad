$(document).ready(function(){
    $(window).on('scroll', function(){
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
    });
});