<?php

namespace app\controllers;


class Cart extends \app\core\Controller
{

    
    function loadData(){

        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['minus1'])) {
            $itemToBeUpdated = new \app\models\Cart();

            $itemToBeUpdated->subtractItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['add1'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->addItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['deleteButton'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->removeFromCart($_POST['cart_id'], $_POST['item_id']);
            }
            return;
        }else{
            // Getting all the stores
        $store = new \app\models\Map();
        $store = $store->getAll();

        // Getting user for their location
        $user = new \app\models\User();
        $user = $user->getByID($_SESSION['user_id']);

        // Getting all items in user's cart
        $itemsInCart = new \app\models\Cart();
        $itemsInCart = $itemsInCart->getUserCartItems($_SESSION['user_id']);

        $data = [
            'stores' => $store,
            'itemsInCart' => $itemsInCart,
            'user' => $user
        ];

        
        $this->view('cart', $data);
        }

        
    }

    function handler(){
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['minus1'])) {
            $itemToBeUpdated = new \app\models\Cart();

            $itemToBeUpdated->subtractItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['add1'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->addItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['deleteButton'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->removeFromCart($_POST['cart_id'], $_POST['item_id']);
            }
        }
    }

    function add($item_id)
    {
        $user_id = $_SESSION['user_id']; // Get user id from session
        $cart = new \app\models\Cart();
        $cart -> addToCart($user_id, $item_id);
        header("Location: /cart");
    }

    function why($cart_id, $item_id, $method){

        if($method === 'minus'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->subtractItemQuantityInCart($cart_id, $item_id);
        }
        if($method === 'add'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->addItemQuantityInCart($cart_id, $item_id);
        }
        if($method === 'delete'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->removeFromCart($cart_id, $item_id);
        }
        
        
        $itemsInCart = new \app\models\Cart();
        $itemsInCart = $itemsInCart->getUserCartItems($_SESSION['user_id']);

        $this->view('cartItems', $itemsInCart);
    }

}
