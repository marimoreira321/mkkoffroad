<template>
    <div class="product">
        <a :href="uri">
            <img :data-src="thumb" class="fp-product-image lazy">
        </a><br/>
        <h4 class="text-strong t-brand-dark text-center">
            {{title}}
        </h4>
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {}
        },
        props: [
            'thumb', 'title', 'uri'
        ]
    }
</script>

<style scooped>
.product{
    padding: 0;
}
.fp-product-image{
    transition: ease-in-out 200ms;
    min-height: 150px;
    border-radius: 0 !important;
}
.fp-product-image:hover{
    box-shadow: 0 0 1em gray;
}

</style>