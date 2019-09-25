<div class="col-12 d-none d-md-block">
    <div
        class="row text-center text-md-right m-0 d-md-flex pt-3 py-sm-0 px-0 px-sm-3 align-items-center text-strong">

        <!-- <div class="col-12 mb-2">
            <div class="d-block d-md-none">
                <i class="fab font-18px fa-facebook"></i>
                <i class="fab font-18px fa-instagram"></i>
            </div><br/>
            <!-- <form>
                <i class="fab d-none d-md-inline font-18px fa-facebook"></i>
                <i class="fab d-none d-md-inline font-18px fa-instagram"></i>
                <input class="rounded" type="search" name="s" placeholder="Buscar receitas e produtos">
                <button class="btn btn-danger p-1">Buscar</button>
            </form> 
            
        </div> -->
    </div>
    <div id="menu_part" class="row mb-0 vw-100">
        <div id="" class="col-12 d-flex align-items-center">
            <img class="d-md-none" src="<?php echo get_template_directory_uri().'/assets/images/mkk/default.png'?>"
                style="height: 100px">
            <ul id="menu_right"
                class="d-none m-0 d-md-flex ml-5 pt-5 py-sm-0 px-0 px-sm-3 align-items-center w-100 justify-content-start">
                <li class="menu-item logo d-inline-block d-md-block mr-5 ">
                    <a href='<?= get_site_url() ?>'>
                        <img src="<?php echo get_template_directory_uri().'-child/assets/images/mkk/default.png'?>"
                            style="height: 50px">
                    </a>
                </li>
                <li class="menu-item p-3 font-14px ml-3 active"><a
                    href="<?= get_site_url() ?>/nossos-produtos">
                    COMPRAR</a>
                    <i class="fas fa-chevron-down"></i>
                </li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/sobre-nos">SOBRE NÓS</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/nossos-clientes">NOSSOS CLIENTES</a>
                </li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/perguntas-frequentes">FAQ</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/contato">CONTATO</a></li>
                <!-- <li class="menu-item p-3"><a href="/">ONDE COMPRAR</a></li> -->
            </ul>
            <form class="form m-0 mr-5 border-sm">
                <input class="form-control" name="s" type="search" placeholder="Pesquisar..">
            </form>
        </div>
        <div class="menu-secondary col-12 d-flex align-items-center justify-content-start w-100 bg-white">
                <ul
                    class="d-none m-0 d-md-flex ml-5 pt-5 py-sm-0 px-0 px-sm-3 align-items-center w-100 justify-content-start">
                    <li><a class="t-black" href="<?= get_site_url() ?>/nossos-produtos">SELECIONAR MARCA</a></li>
                    <span class='mx-2 t-black'> | </span>
                    <li><a class="t-black" href="<?= get_site_url() ?>/categoria-produto/acessorios">ACESSÓRIOS</a></li>
                    <span class='mx-2 t-black'> | </span>
                    <li><a class="t-black" href="<?= get_site_url() ?>/categoria-produto/iluminacao">ILUMINAÇÃO</a></li>
                    <span class='mx-2 t-black'> | </span>
                    <li><a class="t-black" href="<?= get_site_url() ?>/categoria-produto/iluminacao">BARRACAS</a></li>
                </ul>
            </div>
    </div>
</div>