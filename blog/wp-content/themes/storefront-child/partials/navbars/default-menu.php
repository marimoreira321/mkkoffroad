
<div class="col-12 text-center align-items-center d-md-flex d-none">
    <ul id="menu_left" class="m-0 d-md-flex pt-5 py-sm-0 px-0 px-sm-3 align-items-center justify-content-center w-100 text-strong">
        <li class="menu-item logo d-inline-block d-md-block">
            <img
            src="<?php echo get_template_directory_uri().'-child/assets/images/mkk/default.png'?>" 
            height=150> 
        </li>
    </ul>
</div>
<div class="col-12 d-none d-md-block">
    <div class="row text-center text-md-right m-0 mt-3 d-md-flex pt-3 py-sm-0 px-0 px-sm-3 align-items-center text-strong">

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
    <div class="row mb-3">
        <div id="menu_part" class="col-12 d-flex align-items-center">
        <img class="d-md-none" src="<?php echo get_template_directory_uri().'/assets/images/mkk/default.png'?>" style="height: 100px">
            <ul id="menu_right" class="d-none m-0 d-md-flex pt-5 py-sm-0 px-0 px-sm-3 align-items-center  w-100 justify-content-center">
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>">HOME</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/nossos-produtos">PRODUTOS</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/sobre-nos">SOBRE NÓS</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/nossos-clientes">NOSSOS CLIENTES</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/perguntas-frequentes">FAQ</a></li>
                <li class="menu-item p-3 font-14px"><a href="<?= get_site_url() ?>/contato">CONTATO</a></li>
                <!-- <li class="menu-item p-3"><a href="/">ONDE COMPRAR</a></li> -->
            </ul>
        </div>
    </div>
</div>