<?php

namespace app\models;


use PDO;

//CRUD implementation
class Cart extends \app\core\Model { 
    //variables
    public $cart_id;
    public $user_id;
    public $cart_price;
    public $item_id;
    public $quantity_purchased;
    public $name;
    public $price;
    public $image;
    public $quantity;
    public $brand;
    public $store;
    public $search_queries;


    public function getUserCartItems($id){
        // Getting users cart 
        $SQL = 'SELECT * FROM cart WHERE user_id = :user_id';

        $STMT = self::$_conn->prepare($SQL);
        
        $STMT -> execute(
            [
                'user_id'=> $id
            ]
            );
        
        $cart = $STMT->fetch(PDO::FETCH_ASSOC);
        $cart_id = $cart['cart_id'];


        $allInformation = [];

        // Getting users cart items
        $SQL = 'SELECT * FROM items_in_cart WHERE cart_id = :cart_id';

        $STMT = self::$_conn->prepare($SQL);

        $STMT->execute(
            [
                'cart_id' => $cart_id
            ]
        );

        $itemsInCart = $STMT->fetchAll(PDO::FETCH_ASSOC);


        // Getting the items information
        foreach($itemsInCart as $item):
            $SQL = 'SELECT * FROM item WHERE item_id = :item_id';

            $STMT = self::$_conn->prepare($SQL);
            
            $STMT->execute(
                [
                    'item_id' => $item['item_id']
                ]
            );

            $itemInfo = $STMT->fetch(PDO::FETCH_ASSOC);

            $allInformation[] = array_merge($item, $itemInfo, $cart);

        endforeach;

        return $allInformation;
        
    }

    public function subtractItemQuantityInCart($cart_id, $item_id){
        $SQL = 'UPDATE items_in_cart
        SET quantity_purchased = CASE 
                                    WHEN quantity_purchased > 1 THEN quantity_purchased - 1 
                                    ELSE 1 
                                 END
        WHERE cart_id = :cart_id AND item_id = :item_id;';

        //prepare statement
        $STATEMENT = self::$_conn->prepare($SQL);
        $data = [
            'cart_id'=>$cart_id,
            'item_id'=>$item_id
        ];

        $STATEMENT->execute($data);
        $this->updateTotalCartPrice($cart_id);
    }

    public function addItemQuantityInCart($cart_id, $item_id){
        $SQL = 'UPDATE items_in_cart
        SET quantity_purchased = quantity_purchased + 1 
        WHERE cart_id = :cart_id AND item_id = :item_id;';

        //prepare statement
        $STATEMENT = self::$_conn->prepare($SQL);
        $data = [
            'cart_id'=>$cart_id,
            'item_id'=>$item_id
        ];

        $STATEMENT->execute($data);
        $this->updateTotalCartPrice($cart_id);
    }

    public function removeFromCart($cart_id, $item_id){
        $SQL = 'DELETE FROM items_in_cart 
        WHERE cart_id = :cart_id AND item_id=:item_id';

        $STATEMENT = self::$_conn->prepare($SQL);

        $data = [
            'cart_id'=>$cart_id,
            'item_id'=>$item_id
        ];

        $STATEMENT->execute($data);
        $this->updateTotalCartPrice($cart_id);
    }

    public function updateTotalCartPrice($cart_id){
        $totalPrice = 0;
        $allInformation = [];

        // Getting users cart items
        $SQL = 'SELECT * FROM items_in_cart WHERE cart_id = :cart_id';

        $STMT = self::$_conn->prepare($SQL);

        $STMT->execute(
            [
                'cart_id' => $cart_id
            ]
        );

        $itemsInCart = $STMT->fetchAll(PDO::FETCH_ASSOC);


        // Getting the items information
        foreach($itemsInCart as $item):
            $SQL = 'SELECT * FROM item WHERE item_id = :item_id';

            $STMT = self::$_conn->prepare($SQL);
            
            $STMT->execute(
                [
                    'item_id' => $item['item_id']
                ]
            );

            $itemInfo = $STMT->fetch(PDO::FETCH_ASSOC);

            $totalPrice += ($itemInfo['price'] * $item['quantity_purchased']);

        endforeach;
        
        $SQL = 'UPDATE cart
        SET cart_price = :cart_price
        WHERE cart_id = :cart_id';

        //prepare statement
        $STATEMENT = self::$_conn->prepare($SQL);
        $data = [
            'cart_id'=>$cart_id,
            'cart_price'=>$totalPrice
        ];

        $STATEMENT->execute($data);
        
    }

    


}