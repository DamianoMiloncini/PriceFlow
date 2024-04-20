<?php

namespace app\controllers;


class Map extends \app\core\Controller {

    function loadStores(){
        $store = new \app\models\Map();
        $store = $store->getAll();
        
        $this->view('cart', $store);
    }

}