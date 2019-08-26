<template>
    <div class="product">
        <a :href="uri">
            <img :src="thumb" class="fp-product-image">
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
    height: 
}
.fp-product-image:hover{
    transform: scale(1.1);
}

</style>