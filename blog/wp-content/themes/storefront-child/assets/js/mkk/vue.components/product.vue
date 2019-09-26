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
    min-height: 170px;
    width: 100%;
    border-radius: 0 !important;
    box-sizing: border-box;
    object-fit: cover;
}
.fp-product-image:hover{
    box-shadow: 0 0 1em gray;
}
.product h4{
    position: absolute;
    top: 0;
    background: rgba(255,255,255,0.6);
}

</style>