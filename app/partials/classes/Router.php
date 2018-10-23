<?php 

class Router{
    private $base_url = "/";

    private $_routes = Array();

    function new_route($route_data = Array()){
        $this->_routes = $route_data;
    }

    function getRoutes(){
        print_r($this->_routes);
    }

    function getPage($slug = null){
        $slug = substr($_SERVER['REQUEST_URI'],1);
        if(array_key_exists($slug, $this->_routes)){
            return $this->_routes[$slug];
        }else{
            return $this->_routes['404'];
        }
    }

    function is_page($slug){
        return substr($_SERVER['REQUEST_URI'],1) == $slug;
    }

    function is_home(){
        return substr($_SERVER['REQUEST_URI'],1) == "" || substr($_SERVER['REQUEST_URI'],1) == 'home';
    }

}