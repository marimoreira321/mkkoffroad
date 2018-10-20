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
        'hello-world' =>
                $l = new Layout(),
                $l->appendTitle('Hello Mundo!', "-")
                ->setPage('hello-world')
        ,
        //Cada chave carrega uma instância do Layout, contendo as propriedades da página, vistas em app/partials/classes/Layout.php.
        'home'=>
                $l = new Layout(),
                $l->appendTitle('MyMiniFramework', "-")
                ->setPage('home')
        ,
        //Esta instância carrega o blog. Todas as configurações do blog estão na pasta /blog, que é o wordpress.
        'teste'=>
                $l = new Layout(),
                $l->appendTitle('Teste', "-")
                ->setPage('pagetest')
        ,
        '404'=>
                $l = new Layout,
                $l->setPage('errors/404')
);
$r->new_route($routes);
$layout  = $r->getPage();