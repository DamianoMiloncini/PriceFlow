<?php
namespace app\controllers;

class Welcome extends \app\core\Controller {

    function index(){
        //Recipes
        $recipeModel = new \app\models\Recipe();
        $recipes = $recipeModel->getAllPublicRecipesWithImages();

        //Items
        $itemsModel = new \app\models\Item();
        $items = $itemsModel->loadAllItems();

        $data = [
            'recipes' => $recipes,
            'items' => $items,
        ];

        $this->view('home', $data);
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
