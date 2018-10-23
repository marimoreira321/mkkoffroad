<?php

class Layout {

    private $partials = Array();
    private $page = 'app/pages/hello-world.php';
    private $header = 'app/partials/header.php';
    private $footer = 'app/partials/footer.php';
    private $title = 'My Mini Framework';
    private $head_title = "My Mini Framework";
    private $head_sub_text = "";
    private $head_image = "assets/img/train.jpg";
    private $meta = Array();
    private $style = Array('assets/css/main.css');
    private $scripts = Array();
    private $_env = Array();

    public function addCss($files) {
        foreach ($files as $f) {
            array_push($this->style, 'assets/css/' . $f . '.css');
        } return $this;
    }

    public function addJs($files) {
        foreach ($files as $f) {
            array_push($this->scripts, 'assets/js/' . $f . '.js');
        } return $this;
    }

    public function addMeta($str) {
        array_push($this->meta, $str);
        return $this;
    }

    public function setTitle($title) {
        $this->title = $title;
        return $this;
    }

    public function appendPartials($files) {
        foreach ($files as $f) {
            array_push($this->partials, 'app/partials' . $f . '.php');
        }
        return $this;
    }

    public function setPage($page) {
        $this->page = 'app/pages/' . $page . '.php';
        return $this;
    }

    public function setHeaderImage($URI, $url = null){
        $url != null ?
        $this->head_image = $URI :
        $this->head_image = 'assets/img/'.$URI;
        return $this;
    }

    public function setHeaderTitle($title){
        $this->head_title = $title;
        return $this;
    }

    public function setHeaderSubtext($text){
        $this->head_sub_text = $text;
        return $this;
    }

    public function get_header_image(){
        return 'background-image: url(\''.$this->head_image.'\');';
    }        

    public function get_header_title(){
        return $this->head_title;
    }

    public function get_header_subtext(){
        return $this->head_sub_text;
    }

    public function getPartials() {
        return $this->partials;
    }

    public function render() {
        return $this->page;
    }

    public function getMeta() {
        return $this->meta;
    }

    public function getJs() {
        return $this->scripts;
    }

    public function getCss() {
        return $this->style;
    }

    public function getTitle() {
        return $this->title;
    }

    public function appendTitle($str, $separator) {
        $this->title .= " " . $separator . " " . $str;
        return $this;
    }

    public function setHeader($header) {
        $this->header = "app/partials/" . $header . '.php';
        return $this;
    }

    public function getHeader() {
        return $this->header;
    }

    public function setFooter($footer) {
        $this->footer = "app/partials/" . $footer . '.php';
        return $this;
    }

    public function getFooter() {
        return $this->footer;
    }
    
    public function getScripts(){
        return require_once('app/partials/pieces/scripts.php');
    }

    public function set_env($env = Array()){
        $this->_env = $env;
        return $this;
    }

    public function get_env(){
        return $this->_env;
    }

}
