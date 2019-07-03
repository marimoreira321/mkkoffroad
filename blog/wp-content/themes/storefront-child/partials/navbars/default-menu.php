<!-- Este menu é personalizado para pagina única e utiliza um script para listar os nomes
     das seções e programar o smooth scrool até elas. Caso saiba o que fazer e deseje modificar
     o script, acesse assets/js/partials/section-list-menu.js. Entenda que, para utilizar deste menu
     deve-se seguir o modelo da página contida em app/pages/section-list.php-->
<div class="col-12 col-md-2 text-center align-items-center d-md-flex">
    <ul id="menu_left" class="m-0 text-center d-sm-flex pt-5 py-sm-0 px-0 px-sm-3 align-items-center text-strong">
        <li class="menu-item logo d-inline-block d-md-block"><img
                src="<?php echo get_template_directory_uri().'/assets/images/diminas/default.png'?>" height=70> </li>
    </ul>
</div>
<div class="col-12 col-md-10 ">
    <div class="row text-center text-md-right m-0 d-sm-flex pt-3 pt-md-5 py-sm-0 px-0 px-sm-3 align-items-center text-strong">

        <div class="col-12 mb-2 ">
            <div class="d-block d-md-none">
                <i class="fab font-18px fa-facebook"></i>
                <i class="fab font-18px fa-instagram"></i>
            </div><br/>
            <div class="d-none d-md-block">
                <i class="fab font-18px fa-facebook"></i>
                <i class="fab font-18px fa-instagram"></i>
            </div>
            <form>
                <input class="rounded" type="search" name="s" placeholder="Buscar receitas e produtos">
                <button class="btn btn-danger p-1">Buscar</button>
            </form>
            
        </div>
    </div>
    <div class="row">
        <div class="col-12  menu-mobile d-flex align-items-center">
        <img src="<?php echo get_template_directory_uri().'/assets/images/diminas/default.png'?>" style="height: 100px">
            <ul id="menu_right" class="m-0 d-sm-flex pt-5 py-sm-0 px-0 px-sm-3 align-items-center text-strong">
                <li class="menu-item ml-md-5 p-3"><a href="/">A DIMINAS</a></li>
                <li class="menu-item p-3"><a href="shop">PRODUTOS</a></li>
                <li class="menu-item p-3"><a href="/">RECEITAS</a></li>
                <li class="menu-item p-3"><a href="/">ONDE COMPRAR</a></li>
                <li class="menu-item p-3"><a href="/">CONTATO</a></li>
                <li class="menu-item p-3"><a href="/">CATÁLOGO</a></li>
            </ul>
        </div>
    </div>
</div>