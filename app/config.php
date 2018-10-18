<?php

require_once 'partials/classes/Router.php';
require_once 'partials/classes/Layout.php';

/**
 * Defines the router;
 */
$r = new Router();
/**
 * Defines a Layout
 */
$routes = Array(   

        '' =>
                $l = new Layout(),
                $l->appendTitle('MyMiniFramework', "-")
                ->setPage('home')
        ,     
        //Cada chave carrega uma instância do Layout, contendo as propriedades da página, vistas em app/partials/classes/Layout.php.
        'home'=>
                $l = new Layout(),
                $l->appendTitle('MyMiniFramework', "-")
                ->setPage('home')
        ,
        //Esta instância carrega o blog. Todas as configurações do blog estão na pasta /blog, que é o wordpress.
        'blog'=>
                $l = new Layout(),
                $l->getBlog()

);

$r->new_route($routes);

$layout = $r->getPage();
