<?php

namespace app\models;


use PDO;

//CRUD implementation
class Item extends \app\core\Model
{ 
    // Variables
    public $item_id;
    public $name;
    public $price;
    public $image;
    public $quantity;
    public $brand;
    public $store;
    public $search_queries;
   
    public function __construct($object = null)
    {
        if ($object != null) {
            if (is_object($object)) {
                $this->item_id = $object->item_id;
                $this->name = $object->name;
                $this->price = $object->price;
                $this->image = $object->image;
                $this->quantity = $object->quantity;
                $this->brand = $object->brand;
                $this->store = $object->store;
                $this->search_queries = $object->search_queries;
            } elseif (is_array($object)) {
                $this->item_id = $object['id'] ?? null;
                $this->name = $object['name'] ?? null;
                $this->price = $object['price'] ?? null;
                $this->image = $object['image'] ?? null;
                $this->quantity = $object['quantity'] ?? null;
                $this->brand = $object['brand'] ?? null;
                $this->store = $object['store'] ?? null;
                $this->search_queries = $object['search_queries'] ?? null;
            }
        }
    }

    function getById($item_id) {
        //sql statement
        $SQL = 'SELECT * FROM item WHERE item_id = :item_id';
        //prepare statement
        $STMT = self::$_conn->prepare($SQL);
        //execute statement
        $STMT->execute([
            'item_id'=>$item_id,
        ]);
        //fetch class statement
        $item = $STMT->fetch(PDO::FETCH_ASSOC);
        //return the fetched item
        return $item;
    }

}
