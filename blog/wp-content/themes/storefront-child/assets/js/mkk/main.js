require('./lib/vanilla-libs.js');
import MobileMenu from './vue.components/navbar.vue';

document.cookie = "window_width="+window.innerWidth;

$(document).ready(function () {

    require('./lib/on-ready-libs.js');

    /* Reveals the menu after page loading */
    setTimeout(function (){
        $('#menu_right').removeClass('d-none');
    },300);

    /* Sets the links into menu buttons */
    // $('#menu_right .menu-item').on('click', function(){
    //     location.href=$(this).find('a').attr('href');
    // });
    $('#buy').on('mouseover', e =>{
        $('.menu-secondary ul').addClass('open');
        $('#buy i').addClass('d-inline');
        $('#buy').addClass('active');
        $('.menu-secondary ul').on('mouseover', e=> {
            $('.menu-secondary ul').addClass('open');
            $('#buy i').addClass('d-inline');
            $('#buy').addClass('active');
            
        })
        $('.menu-secondary ul').on('mouseout', e => {
            $('.menu-secondary ul').removeClass('open');
            $('#buy i').removeClass('d-inline');
            $('#buy').removeClass('active');
        })

    })


        $('#the_post a').attr("target", "_blank");
            // Window height getter
            var wh = $(window).innerHeight();
            // Windows width getter
            var ww = $(window).innerWidth();
            //---
            $(window).on('resize', function(){
                // console.log(ww);
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

        // console.log(ww);
        //---

    //---
    $('.related.products ul .product.type-product.status-publish').addClass("col-5 mx-1 px-0");
    $('.storefront-sorting')[1].remove()
});

let MenuMobile = new Vue({
    el: '#mobile-menu',
    data: {},
    components: {
        MobileMenu
    }
})