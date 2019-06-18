<template>
    <div class="product">
        <img :src="title_img">
        <img :src="thumb">
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {}
        },
        props: [
            'thumb', 'title'
        ]
    }
</script>