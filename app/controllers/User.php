<?php

namespace app\controllers;

class User extends \app\core\Controller {

    //user registration
    function register() {
       //check if the user submitted the form
       if($_SERVER['REQUEST_METHOD'] === 'POST') {
        //instantiate the User model class
        $user = new \app\models\User();
        //get the data inputted from the user
        $user->username = $_POST['username'];
        $user->password_hash = password_hash($_POST['password_hash'],PASSWORD_DEFAULT);
        $user->first_name = $_POST['first_name'];
        $user->last_name = $_POST['last_name'];
        $user->address = $_POST['address'];
        $user->street = $_POST['street'];
        $user->city =$_POST['city'];
        $user->province = $_POST['province'];
        $user->postal_code = $_POST['postal_code'];

        //insert the data in the DB
        $user->insert();

        //redirect the user to another page
        header('location:/User/login');
       }
       //else show the register view again
       else {
        $this->view('User/registration');
       }
    }
    //user login
    function login() {
        //check if user submitted the form
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        //get the username &password
        $username = $_POST['username'];
        $password = $_POST['password_hash'];
        //instantiate the User model class
        $user = new \app\models\User();
        //get the user by username
        $user->getByUsername($username);
        //check if what the user submitted matches the data in the db
        if ($user && password_verify($password,$user->password_hash)) {
            //store the user_id in a session
            $_SESSION['user_id'] = $user ->user_id; 

            header('location:/home');
        }
        else {
            header('location:/User/login');
        }
        }
        else {
            $this->view('User/login');
        }
        }
    

    //user logout
    function logout() {
        //erase the user from the session
        session_destroy();

        //redirect the user to the login page
        header('location:/User/login');
    }

    //update user account informations
    function updateUser() {
        $user = new \app\models\User();
        //get the user by id from Session
        $user->getByID($_SESSION['user_id']);
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
        //instantiate the user model class
        //update the information
        $user->username = $_POST['username'];
        $password = $_POST['password_hash'];
        $user->first_name = $_POST['first_name'];
        $user->last_name = $_POST['last_name'];
        $user->address = $_POST['address'];
        $user->street = $_POST['street'];
        $user->city =$_POST['city'];
        $user->province = $_POST['province'];
        $user->postal_code = $_POST['postal_code'];
        //check if the user changed the password beforehand otherwise youll redo the hashing for no reason
        if(!empty($password)) {
            $user->password_hash = password_hash($password,PASSWORD_DEFAULT);
        }
        //call the update method from the model to update data in the db
        $user->update();
        //redirect the user to another page
        header('location:/User/account');
        }
        else {
            $this->view('User/update', $user);
        }


}
}