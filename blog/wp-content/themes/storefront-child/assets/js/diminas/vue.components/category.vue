<template>
    <div class="category border-radius-sm">
        <button 
            :href="uri"
            :style="'background-image: url('+thumb+')'"
            class="d-flex align-items-end justify-content-center"
        >
            <h6 class="text-strong t-white text-center bg-black-a-3 px-1 border-radius-sm">
                {{title}}
            </h6>
        </button><br/>

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
.category{
    padding: 0;
}

.category button:hover{
    background-size: 250%;
}
.category button{
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: 210%;
    transition: ease-in-out 200ms;
    border-radius: 5px
}

</style>