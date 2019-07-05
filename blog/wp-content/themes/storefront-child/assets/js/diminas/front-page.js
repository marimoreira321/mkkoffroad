require('./lib/vanilla-libs.js');

import Product from './vue.components/products.vue';
import Jumbotron from './vue.components/jumbotron.vue';

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