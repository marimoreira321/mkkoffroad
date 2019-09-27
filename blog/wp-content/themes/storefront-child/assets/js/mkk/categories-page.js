require('./lib/vanilla-libs.js');
import ProductItems from './vue.components/util/products.js';
import Categories from './vue.components/categories.vue';
import Jumbotron from './vue.components/jumbotron.vue';

//front-page-vue

let data = {
    brands: ProductItems.brands()
}

let fp = new Vue({
    el:"#categories",
    data: data,
    components:{
        Categories,
    },

    methods:{

    },

    created: function(){

    }
});

let fpb = new Vue({
    el:"#brands",
    data: data,
    components:{
        Categories,
    },

    methods:{

    },

    created: function(){

    }
});
