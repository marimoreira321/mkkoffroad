<?php

class Layout {

    public $partials = Array();
    public $page = 'app/pages/hello-world.php';
    public $header = 'app/partials/header.php';
    public $footer = 'app/partials/footer.php';
    public $title = 'O Trem';
    public $meta = Array();
    public $style = Array('assets/css/main.css');
    public $scripts = Array();

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

    public function getPartials() {
        return $this->partials;
    }

    public function render() {
        return require_once $this->page;
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
        return require_once $this->header;
    }

    public function setFooter($footer) {
        $this->footer = "app/partials/" . $footer . '.php';
        return $this;
    }

    public function getFooter() {
        return require_once $this->footer;
    }
    
    public function getScripts(){
        return require_once('app/partials/pieces/scripts.php');
    }

}
