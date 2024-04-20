<?php

namespace app\controllers;


class Map extends \app\core\Controller {

    function loadStores(){
        $store = new \app\models\Map();
        $store = $store->getAll();

        $user = new \app\models\User();
        $user = $user->getByID(4);

        $data = [
            'stores' => $store,
            'user' => $user
        ];

        
        $this->view('cart', $data);
    }

}