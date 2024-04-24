<?php
namespace app\controllers;

class Welcome extends \app\core\Controller {

    function index(){
        
        $this->view('home');

    }

    function map(){
        
        $store = new \app\models\Map();
        $store = $store->getAll();
        
        $this->view('map', $store);

    }

    function cart(){
        $this->view('cart');
    }

}
