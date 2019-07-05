<template>
    <div class="product">
        <a :href="uri">
            <img :src="title" class="fp-product-title">
            <img :src="thumb" class="fp-product-image">
        </a>
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
    padding: 20%;
}
.fp-product-image{
    transition: ease-in-out 200ms;
}
.fp-product-image:hover{
    transform: scale(1.1) rotateZ(12deg);
}

</style>