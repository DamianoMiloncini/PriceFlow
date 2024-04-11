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
            'first_name'=> $this->first_name,
            'last_name'=> $this->last_name,
            'address'=> $this->address,
            'street'=> $this->street,
            'city'=> $this->city,
            'province'=> $this->province,
            'postal_code'=> $this->postal_code,
        ]
        );
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
            'username'=> $this->username
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
            'user_id'=> $this->user_id
        ]
        );
    //return the data fetched
    $STMT -> setFetchMode(PDO::FETCH_CLASS, 'app\models\User');
    return $STMT->fetch();

   }

   //update user's information details
   function update() {
    //SQL statement
    $SQL = 'UPDATE user SET username = :username, password_hash = :password_hash, first_name = :first_name, last_name = :last_name, address = :address, street = :street, city = :city, province = :province, postal_code = :postalcode where user_id = :user_id ';
    //prepare the statement
    $STMT = self::$_conn->prepare($SQL);
    //execute the statement
    $STMT->execute((array)$this);
   }


}