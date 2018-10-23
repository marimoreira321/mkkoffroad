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
                ->setHeaderTitle('Hello Mini World!')
        ,
        //Cada chave carrega uma instância do Layout, contendo as propriedades da página, vistas em app/partials/classes/Layout.php.
        'home'=>
                $l = new Layout(),
                $l->appendTitle('MyMiniFramework', "-")
                ->setPage('home')
        ,

        'teste'=>
                $l = new Layout(),
                $l->appendTitle('Teste', "-")
                ->setPage('pagetest')
                ->setHeaderTitle('Test page')
                ->setHeaderImage('train.jpg')
                ->set_env([
                        'key' => 'Silence is golden.',//Torna-se uma variável no escopo global da rota.
                        'keys' => 'chaves',
                        'amb' => 'ambiente',
                        'file' => 'config.php'
                ])
                ->setHeaderSubtext("The more you talk the less you hear.")
        ,
        '404'=>
                $l = new Layout,
                $l->setPage('errors/404')
);
$r->new_route($routes);
$layout  = $r->getPage();
extract($layout->get_env());