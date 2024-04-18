<?php

namespace app\models;

use PDO;

//CRUD implementation
class Item extends \app\core\Model {
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