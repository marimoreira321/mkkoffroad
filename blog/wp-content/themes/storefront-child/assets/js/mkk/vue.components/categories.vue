<template>

<div class="row mt-0 pt-0">
		<h3 class="h2 text-center t-black mt-0 w-100 py-4 bg-white mb-0 fp-title mb-5" v-if="title">{{title}}</h3>
		<div class="container px-5">
			<div class="row justify-content-center px-10">
				<div class="col-6 p-0 m-0" :class="'col-sm-'+(12/(cols || 4))"
                v-for="(item, idx) in items" :key="idx">
					<category :title="item.name" :thumb="item.thumb" :uri="store_url + item.uri" />
				</div>
			</div>
		</div>
		</div>
</template>

<script>
import Category from './category.vue'

    module.exports = {
        data: function () {
            return {
                items: {}
            }
        },
        components:{
            Category
        },
        props: [
            'items_json', 'base_url', 'title', 'cols', 'store_url'
        ],
        created: function() {
            this.items = JSON.parse(atob(this.items_json))
        }
    }
</script>

<style scooped>
.col-sm-3 .category{
    height: 150px;
}
.col-sm-4 .category{
    height: 190px;
}
@media screen and (min-width: 991.99px){
    .px-10{
        padding: 0 10%
    }
}
</style>