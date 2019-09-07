require('./lib/vanilla-libs.js');
import ProductItems from './vue.components/util/products.js';
import Products from './vue.components/products.vue';
import Jumbotron from './vue.components/jumbotron.vue';

//front-page-vue

let data = {
    products: ProductItems.products()

}

let fp = new Vue({
    el:"#portfolio",
    data: data,
    components:{
        Products,
    },

    methods:{

    },

    created: function(){

    }
});

// let fpj = new Vue({
//     el: "#fp-jumbo",
//     data: data,
//     components:{
//         jumbotron: Jumbotron,
//     },
//     methods: {

//     },
//     created: function(){

//     }
// });