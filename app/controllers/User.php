<?php

namespace app\controllers;

use chillerlan\Authenticator\{Authenticator, AuthenticatorOptions};
use chillerlan\QRCode\QRCode;


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

        $_SESSION['user_id'] = $user->user_id;


        //redirect the user to another page
        header('location:/User/setup2fa' );
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
        $user = $user->getByUsername($username);
        //check if what the user submitted matches the data in the db
        if ($user && password_verify($password,$user->password_hash)) {
            //store the user_id in a session
            $_SESSION['user_id'] = $user->user_id; 
            //store the user secret to the session variables
            $_SESSION['secret'] = $user->secret;

            if ($_SESSION['secret'] == null) {
                $_SESSION['secret'] = 1;
                header('location:/User/setup2fa');

            }
            else {
                header('location:/User/check2fa'); 
            }

            //header('location:/home');
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
        header('location:/home');
    }

    //update user account informations
    //#[\app\accessFilters\Login] // make sure that the user is logged in before modifying
    function updateUser() {
        $user = new \app\models\User();
        //get the user by id from Session
        $user = $user->getByID($_SESSION['user_id']);
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
        //instantiate the user model class
        //update the information
        $user->username = $_POST['username'];
        $password = $_POST['password_hash'];
        $user->first_name = $_POST['first_name'];
        $user->last_name = $_POST['last_name'];

        //This should be in the update location view (**TODO later)
        // $user->address = $_POST['address'];
        // $user->street = $_POST['street'];
        // $user->city =$_POST['city'];
        // $user->province = $_POST['province'];
        // $user->postal_code = $_POST['postal_code'];
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

    //setting up the 2FA
   
    function setup2fa() { //comment later on
        $user = new \app\models\User();
        $options = new AuthenticatorOptions();
		$authenticator = new Authenticator($options);

		if($_SERVER['REQUEST_METHOD'] === 'POST'){
            //get the user information from the registration submission
            $user = $user->getByID($_SESSION['user_id']);
            
			if(isset($_SESSION['secret_setup'])){
				$authenticator->setSecret($_SESSION['secret_setup']);
			}else{
				header("location:/User/setup2fa");
			}
			//was submitted, check the TOTP
			$totp = $_POST['totp'];
			if($authenticator->verify($totp)){
				//add the secret to the user record
				$user->secret = $_SESSION['secret_setup'];
                $user->add2FA();
                //redirect the user to the login page
                header('location:/home');

			}else{
				//if wrong code, show the same view
                $this->view('User/setup2fa');
			}
		}else{
			$_SESSION['secret_setup'] = $authenticator->createSecret();
			//generate the URI with the secret for the user
			$uri = $authenticator->getUri('Superb application', 'localhost');
			$QRCode = (new QRCode)->render($uri);
			$this->view('User/setup2fa',['QRCode'=>$QRCode]);
		}
	}
    function check2fa(){
        if($_SERVER['REQUEST_METHOD']==='POST'){
            $options = new AuthenticatorOptions();
            $authenticator = new Authenticator($options);
            $authenticator->setSecret($_SESSION['secret']);
            if($authenticator->verify($_POST['totp'])){
                unset($_SESSION['secret']);
                header('location:/home');//the good place
            }else{
                session_destroy();
                header('location:/User/login');
            }
        }else{
            $this->view('User/check2fa');
        }
    }


    function viewAccount() {
        if(isset($_SESSION['user_id'])) {
            $user = new \app\models\User();
            //get user's information
            $user = $user->getByID($_SESSION['user_id']);

            //if the user has informations (which means they are logged in), display profile button & logoutbutton
            if($user) {
             $this->view('User/account', $user);  
            }
            else { //if the user is not logged in, show the register and login button
               echo 'Not able to retrieve user informations.';
            }
        }
    }
}





