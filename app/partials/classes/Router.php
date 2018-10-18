<?php 

class Router{
    private $base_url = "/myMiniFramework/";

    private $_routes = Array();

    function new_route($route_data = Array()){
        $this->_routes = $route_data;
    }

    function getRoutes(){
        print_r($this->_routes);
    }

    function getPage(){
        $slug = explode($this->base_url ,$_SERVER['REQUEST_URI'])[1];
        return $this->_routes[$slug];
    }

}