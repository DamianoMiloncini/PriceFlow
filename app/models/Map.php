<?php

namespace app\models;

use PDO;

class Map extends \app\core\Model {
    public $store_id;
    public $store_name;
    public $address;
    public $postal_code;
    public $city;
    public $province;

    function getById($id){

        $SQL = 'SELECT * FROM  Store WHERE store_id = :store_id';
        
        $STMT = self::$_conn->prepare($SQL);
        
        $STMT -> execute(
            [
                'store_id'=> $id
            ]
            );
        
        $STMT -> setFetchMode(PDO::FETCH_CLASS, 'app\models\Map');
        return $STMT->fetch();

    }
}