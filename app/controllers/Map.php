<?php

namespace app\controllers;


class Map extends \app\core\Controller {
    function loadStores(){
        $store = new \app\models\Map();
        $store = $store->getById(1);
        
        $this->view('cart', $store);
    }
}