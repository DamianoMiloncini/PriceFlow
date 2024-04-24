<?php

namespace app\models;


use PDO;

//CRUD implementation
class Item extends \app\core\Model{ 
    //variables
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
            $this->item_id = $object->item_id;
            $this->name = $object->name;
            $this->price = $object->price;
            $this->image = $object->image;
            $this->quantity = $object->quantity;
            $this->brand = $object->brand;
            $this->store = $object->store;
            $this->search_queries = $object->search_queries;
        }
       
    }

    //get item information by item id

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