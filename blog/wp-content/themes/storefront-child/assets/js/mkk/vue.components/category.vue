<template>
    <div class="category border-radius-sm">
        <button 
            @click="go"
            :style="'background-image: url('+thumb+')'"
            class="d-flex align-items-end justify-content-center"
        >
            <h6 class="text-strong t-white text-center px-1 border-radius-sm category-name">
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
        ],
        methods:{
            go: function()
            {
                location.href=this.uri
            }
        }
    }
</script>

<style scooped>
.category{
    padding: 0;
}

.category button:hover{
    background-size: 230%;
}
.category button:hover > .category-name{
    margin-bottom: 18px;
}
.category-name{
    transition: ease-in-out 200ms;
}
.category button{
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: 210%;
    transition: ease-in-out 200ms;
    border-radius: 1px;
    border: 1px solid white
}

.category-name{
    text-shadow: 0 1px 1px rgba(0,0,0,0.25)
}

</style>