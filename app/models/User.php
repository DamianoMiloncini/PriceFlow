<?php

namespace app\models;

use PDO;

//CRUD implementation
class User extends \app\core\Model {
    //variables
    public $user_id;
    public $username;
    public $password_hash;
    public $first_name;
    public $last_name;
    public $address;
    public $street;
    public $city;
    public $province;
    public $postal_code;
    public $secret;

   
   //insert data into the DB
   function insert() {
    //SQL statement
    $SQL = 'INSERT INTO user (username,password_hash,first_name,last_name,address,street,city,province,postal_code) VALUES (:username, :password_hash, :first_name, :last_name, :address, :street, :city, :province, :postal_code)';
    //prepare the statement
    $STMT = self::$_conn->prepare($SQL);
    //execute the statement
    $STMT->execute(
        [
            'username'=> $this->username,
            'password_hash'=> $this->password_hash,
            'first_name'=> $this->first_name,
            'last_name'=> $this->last_name,
            'address'=> $this->address,
            'street'=> $this->street,
            'city'=> $this->city,
            'province'=> $this->province,
            'postal_code'=> $this->postal_code,
        ]
        );

        $this->user_id = self::$_conn->lastInsertId();
        return $this->user_id;
   }

   //search a user based on their username
   function getByUsername($username) {
    //sql statement
    $SQL = 'SELECT * FROM  user WHERE username = :username';
    //prepare statement
    $STMT = self::$_conn->prepare($SQL);
    //execute the statement
    $STMT -> execute(
        [
            'username'=> $username
        ]
        );
    //return the data fetched
    $STMT -> setFetchMode(PDO::FETCH_CLASS, 'app\models\User');
    return $STMT->fetch();
   }

   //search a user by their user_id
   function getByID($user_id) {
    //sql statement
    $SQL = 'SELECT * FROM  user WHERE user_id = :user_id';
    //prepare statement
    $STMT = self::$_conn->prepare($SQL);
    //execute the statement
    $STMT -> execute(
        [
            'user_id'=> $user_id
        ]
        );
    //return the data fetched
    $STMT -> setFetchMode(PDO::FETCH_CLASS, 'app\models\User');
    return $STMT->fetch();

   }

   //update user's information details
   function update() {
    //SQL statement
    $SQL = 'UPDATE user SET username = :username, password_hash = :password_hash, first_name = :first_name, last_name = :last_name where user_id = :user_id ';
    //prepare the statement
    $STMT = self::$_conn->prepare($SQL);
    //execute the statement
    $STMT->execute([
        'user_id'=> $this->user_id,
        'username'=>$this->username,
        'password_hash'=>$this->password_hash,
        'first_name'=>$this->first_name,
        'last_name'=>$this->last_name,
        // 'address'=> null,
        //     'street'=> null,
        //     'city'=>null,
        //     'province'=> null,
        //     'postal_code'=> null,
    ]);
   }

   public function add2FA(){
    //change anything but the PK
    $SQL = 'UPDATE user SET secret = :secret WHERE user_id = :user_id';
    $STMT = self::$_conn->prepare($SQL);
    $STMT->execute(['user_id'=>$this->user_id,
                    'secret'=>$this->secret]);
}

}