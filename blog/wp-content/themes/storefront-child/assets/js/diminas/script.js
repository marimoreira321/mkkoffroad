require('./lib/vanilla-libs.js');

import Product from './vue.components/products.vue';
import Jumbotron from './vue.components/jumbotron.vue';

$(document).ready(function () {
    require('./lib/on-ready-libs.js');

        /**
         * Sets link in post page to open in a new window.
         */
        /**
     * Define açoes padrões para mobile.
     */


    if ($(window).innerWidth() < 768) {
        $('.menu').removeClass('mt-4');
        $('.menu-mobile').addClass('position-fixed')
        let mobile = $('.menu-mobile');
        mobile.css('height', 0);
        mobile.css('transition', 'ease-in-out 200ms');

        $('#menu-toggler').on('click', function(){
            if(!mobile.hasClass('opened')){
                mobile.addClass('opened');
                let height = mobile.children("#menu_right").css('height');
                mobile.css('height', height);
                mobile.find('li').on('click', function(){
                    mobile.removeClass('opened');
                    mobile.css('height', 0);
                })
            }else{
                mobile.removeClass('opened');
                mobile.css('height', 0);
            }

        });
    }

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
                    if(yPos>1){
                        $('#navbar').addClass('bg-black-a');
                    }else{
                        $('#navbar').removeClass('bg-black-a');
                    }
                }
            );

        console.log(ww);
        //---

    //---
});

//front-page-vue

let data = {

}

let fp = new Vue({
    el:"#products",
    data: data,
    components:{
        product: Product,
    },

    methods:{

    },

    created: function(){

    }
});

let fpj = new Vue({
    el: "#fp-jumbo",
    data: data,
    components:{
        jumbotron: Jumbotron,
    },
    methods: {

    },
    created: function(){

    }
});