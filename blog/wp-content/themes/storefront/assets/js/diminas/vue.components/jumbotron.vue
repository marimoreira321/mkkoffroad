<template>
    <div class="jumbo-img row bg-stripped-brand-red" v-if="side == 'left'">
            <div class="col-6 p-0">
                <img :src="thumb" class="w-100">
            </div>
            <div class="col-12 col-sm-3 p-3 d-flex justify-content-center flex-column">
                <h3 class="t-white text-strong">{{title}}</h3>
                <h4 class="t-white">{{text}}</h4>
                <button class="btn btn-danger" @click="goto()">Veja mais</button>
			</div>

    </div>
    <div class="jumbo-img row bg-stripped-brand-red" v-else-if="side == 'right'">
            <div class="col-12 col-sm-3 offset-sm-3 p-3 d-flex justify-content-center flex-column">
                <h3 class="t-white text-strong">{{title}}</h3>
                <h4 class="t-white">{{text}}</h4>
                <button class="btn btn-danger" @click="goto()">Veja mais</button>
			</div>
			<div class="col-6 p-0">
                <img :src="thumb" class="w-100">
            </div>
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {}
        },
        props: [
            'thumb', 'title', 'uri', 'side', 'text'
        ],
        methods: {
            goto: function()
            {
                location.href = "/"+this.uri;
            }
        }
    }
</script>

<style scooped>

</style>