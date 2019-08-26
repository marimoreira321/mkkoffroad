<template>
    <div class="row">
        <div class="col-12 col-md-10 ">
            <div
                class="row text-center text-md-right m-0 d-md-flex pt-3 py-sm-0 px-0 px-sm-3 align-items-center text-strong">

                <div class="col-12 mb-2">
                    <div class="d-block d-md-none">
                        <i class="fab font-18px fa-facebook"></i>
                        <i class="fab font-18px fa-instagram"></i>
                    </div><br />
                    <form>
                        <i class="fab d-none d-md-inline font-18px fa-facebook"></i>
                        <i class="fab d-none d-md-inline font-18px fa-instagram"></i>
                        <input class="rounded" type="search" name="s" placeholder="Buscar receitas e produtos">
                        <button class="btn btn-danger p-1">Buscar</button>
                    </form>

                </div>
            </div>
            <div class="row mb-3">
                <div id="menu_part" class="col-12 d-flex align-items-center">
                    <img class="d-md-none"
                        :src="logo_url"
                        style="height: 100px">
                    <ul id="menu_right"
                        class="d-none m-0 d-md-flex pt-5 py-sm-0 px-0 px-sm-3 align-items-center text-strong">
                        <li class="menu-item ml-md-5 p-3"><a href="/">A DIMINAS</a></li>
                        <li class="menu-item p-3"><a href="/blog/loja">PRODUTOS</a></li>
                        <li class="menu-item p-3"><a href="/">RECEITAS</a></li>
                        <li class="menu-item p-3"><a href="/">ONDE COMPRAR</a></li>
                        <li class="menu-item p-3"><a href="/">CONTATO</a></li>
                        <li class="menu-item p-3"><a href="/">CATÁLOGO</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {
                logo_url
            }
        },
        props: [
            'items', 'logo'
        ],
        methods: {
            
        },
        created: function() {
        }
    }
</script>

<style scooped>

</style>