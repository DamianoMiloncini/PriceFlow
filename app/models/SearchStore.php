<?php

namespace app\models;

use PDO;
class SearchStore extends \app\core\Model {
  //variables
  public $store_id;
  public $store_name;
  public $address;
  public $postal_code;
  public $city;
  public $province;
  
  
//insert into db
function insert() {
    //sql statement
    $SQL = 'INSERT INTO store (store_name,address,postal_code,city,province) VALUES (:store_name,:address,postal_code,city,province)';
    //prepare statement
    $STMT = self::$_conn->prepare($SQL);
    //execute statement
    $STMT->execute([
        'store_name'=>$this->store_name,
        'address'=>$this->address,
        'postal_code'=>$this->postal_code,
        'city'=>$this->city,
        'province'=>$this->province,
    ]);
}

//fetch all stores in the db to compare if a store has been added or not

function getAll() {
    $SQL = 'SELECT * FROM store';
    //prepare statement
    $STMT = self::$_conn->prepare($SQL);
    //execute statement
    $STMT->execute();
    //return the fetched information
    $stores = $STMT->fetchAll(PDO::FETCH_ASSOC);

    return $stores;

}

}