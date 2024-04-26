<?php
namespace app\controllers;

class Welcome extends \app\core\Controller {

    function index(){
        $recipeModel = new \app\models\Recipe();

        $recipes = $recipeModel->getAllPublicRecipesWithImages();

        $this->view('home', $recipes);
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
