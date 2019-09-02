<template>

<div class="row mt-0 pt-0 reveal l-fade-scroll lazy">
		<h3 class="h2 text-center t-white mt-0 w-100 py-4 bg-black-a-3 mb-0 fp-title" v-if="title">{{title}}</h3>
		<div class="container bg-white p-5">
			<div class="row justify-content-center">
				<div class="col-12" :class="'col-sm-'+(12/(cols || 4))"
                v-for="(item, idx) in items" :key="idx">
					<category :title="item.name" :thumb="base_url+item.thumb" :uri="item.uri" />
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
            'items', 'base_url', 'title', 'cols'
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
</style>