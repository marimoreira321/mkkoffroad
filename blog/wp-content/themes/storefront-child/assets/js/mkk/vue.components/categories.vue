<template>

<div class="row mt-0 pt-0">
		<h3 class="h2 text-center t-black mt-0 w-100 py-4 bg-white mb-0 fp-title mb-5" v-if="title">{{title}}</h3>
		<div class="container px-5">
			<div class="row justify-content-left px-10">
				<div class="col-12 px-2" :class="'col-sm-'+(12/(cols || 4))"
                v-for="(item, idx) in items" :key="idx">
					<category :title="item.name" :thumb="base_url+item.thumb" :uri="store_url + item.uri" />
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
            }
        },
        components:{
            Category
        },
        props: [
            'items', 'base_url', 'title', 'cols', 'store_url'
        ]
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