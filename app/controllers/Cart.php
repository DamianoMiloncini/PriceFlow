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
        }

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
