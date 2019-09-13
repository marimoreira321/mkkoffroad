require('./lib/vanilla-libs.js');
import MobileMenu from './vue.components/navbar.vue';

$(document).ready(function () {

    require('./lib/on-ready-libs.js');

    /* Reveals the menu after page loading */
    setTimeout(function (){
        $('#menu_right').removeClass('d-none');
    },300);

    /* Sets the links into menu buttons */
    $('#menu_right .menu-item').on('click', function(){
        location.href=$(this).find('a').attr('href');
    });

    /* Sets the mobile version of the menu. Only works if loaded in mobile
     * Otherwise will disformat
     */
    // if ($(window).innerWidth() < 768) {
    //     $('#menu_part').addClass('menu-mobile')
    //     $('.menu').removeClass('mt-4');
    //     $('.menu-mobile').addClass('position-fixed')
    //     let mobile = $('.menu-mobile');
    //     mobile.css('height', 0);
    //     mobile.css('transition', 'ease-in-out 200ms');

    //     $('#menu-toggler').on('click', function(){
    //         if(!mobile.hasClass('opened')){
    //             mobile.addClass('opened');
    //             let height = mobile.children("#menu_right").css('height');
    //             mobile.css('height', height);
    //             mobile.find('li').on('click', function(){
    //                 mobile.removeClass('opened');
    //                 mobile.css('height', 0);
    //             })
    //         }else{
    //             mobile.removeClass('opened');
    //             mobile.css('height', 0);
    //         }

    //     });
    // }

        $('#the_post a').attr("target", "_blank");
            // Window height getter
            var wh = $(window).innerHeight();
            // Windows width getter
            var ww = $(window).innerWidth();
            //---
            $(window).on('resize', function(){
                console.log(ww);
                // Window height getter
                wh = $(window).innerHeight();
                // Windows width getter
                ww = $(window).innerWidth();
            });

        /**
         * This sections configures the parallax fx in the #pg-header
         */
            $(window).scroll(function(){
                var yPos = $(this).scrollTop();
        /**
         * Amount to move the background image
         * + moves the image same scrolling direction
         * - does reverse scrolling
         */
                    // if(yPos>1){
                    //     $('#navbar').addClass('bg-black-a');
                    // }else{
                    //     $('#navbar').removeClass('bg-black-a');
                    // }
                }
            );

        console.log(ww);
        //---

    //---
    $('.related.products ul .product.type-product.status-publish').addClass("col-5 mx-1 px-0");

});

let MenuMobile = new Vue({
    el: '#mobile-menu',
    data: {},
    components: {
        MobileMenu
    }
})