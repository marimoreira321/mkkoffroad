<template>
    <div class="w-100" id="mn-topbar">
        <div class="container w-100 px-0">
            <div class="row mb-2 justify-contente-center p-3">
                <div class="col-2">
                    <i class="fas fa-bars fa-2x pointer text-black"  @click="opened = true"/>
                </div>
                <div class="col-8 text-center">
                    <img :src="logo" style="height: 60px" class="d-inline-block" @click="go('')">
                </div>
                <div class="col-2">
                    
                </div>
            </div>
            <div class="row">
                <div class="col-12 px-2 ">
                    <form class="px-3">
                        <input type="search" name="s" placeholder="Buscar" 
                        class="w-100 rounded py-0"/>
                    </form>
                </div>
            </div>
            <div class="row mx-0 px-0 w-100" v-if="is_home">
                <div class="col-12 mx-0 px-0">
                    <div id="mn-nav">
                        <ul class="mx-0 px-0">
                            <li v-for="(item, idx) in select" :key="idx" style="pointer" @click="item.url ? go(item.url) : false"
                                class="px-2 bg-dark"
                            >
                                <div class="row bg-dark">
                                    <div class="col-10">
                                        <h6 class="text-strong t-white py-3 m-0 font-14px" @click="go(item.url)">
                                                {{item.title}}
                                        </h6>
                                    </div>
                                    <div class="col-2 d-flex align-items-center">
                                        <i class="fas fa-chevron-right fa-2x" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="mn-hidden" class="bg-dark" :class="{ 'mn-open': opened, 'mn-closed': !opened }">
            <div class="w-100 text-center">
                <i class="fas fa-times fa-2x my-3 t-white" @click="opened = false"/>
            </div>
            <ul class="pl-0 ml-0" id="mobile-navbar">
                <li v-for="(item, idx) in items" :key="idx" @click="go(item.url), opened = false"
                    class="py-1"
                >
                    <h6 class="text-strong t-white py-2 font-16px text-center m-0">{{item.title}}</h6>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {
                opened: false,
                items: [
                    {
                        title: 'COMPRAR',
                        url: 'nossos-produtos'
                    },
                    {
                        title: "SOBRE NÓS",
                        url: 'sobre-nos'
                    },
                    {
                        title: "FAQ",
                        url: 'perguntas-frequentes'
                    },
                    {
                        title: "CONTATO",
                        url: 'contato'
                    },
                    {
                        title: "NOSSOS CLIENTES",
                        url: 'nossos-clientes'
                    }
                ],
                select: [
                    {
                        title: 'COMPRAR',
                        url: 'nossos-produtos'
                    },
                    {
                        title: "SOBRE NÓS",
                        url: 'sobre-nos'
                    },
                    {
                        title: "CONTATO",
                        url: 'contato'
                    }
                ]
            }
        },
        props: [
            'logo', 'base_url', 'is_home'
        ],
        methods: {
            go: function(url)
            {
                location.href=this.base_url + url;
            }
        },
        created: function() {
        }
    }
</script>

<style scooped>

#mn-nav ul,
#mn-hidden ul{
    list-style-type: none;
}
#mn-nav ul li{
    border-top: 1px solid
    
}
#mn-nav ul li:last-of-type{
    border-bottom: 1px solid
}

#mn-hidden{
    position: fixed;
    height: 100vh;
    min-width: 80vw;
    overflow-y: scroll;
    top: 0;
    transition: ease-in-out 200ms;
    z-index: 999;
    border-right: 10px solid gray ;
}
#mobile-navbar li{
    transition: ease-in-out 200ms;
    border-bottom: 1px solid gray;
}
#mobile-navbar li:last-of-type{
    border: none;
}
#mobile-navbar li:hover{
    background-color: #666268
}
#mobile-navbar li:active{
    background-color: #434044
}
.mn-open{
    left: 0;
}
.mn-closed{
    left: -82vw;
}

</style>