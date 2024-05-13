<?php

namespace app\controllers;

use chillerlan\Authenticator\{Authenticator, AuthenticatorOptions};
use chillerlan\QRCode\QRCode;


class User extends \app\core\Controller {

    //user registration
    function register() {
        //variable
        $msg = '';
        //get all the users from the DB
        $dbUsers =new \app\models\User();
        $dbUsers = $dbUsers->getAll();
       //check if the user submitted the form
       if($_SERVER['REQUEST_METHOD'] === 'POST') {
        //instantiate the User model class
        $user = new \app\models\User();
        //get the data inputted from the user
        $username = strtolower($_POST['username']);
        foreach($dbUsers as $dbUser) {
            if ($dbUser->username == $username) {
                $_SESSION['error_message'] = 'Username already exists. Please choose a different one.';
                header('location:/User/registration');
                exit;
            }
        }
        $user->username = $username;
        $user->password_hash = password_hash($_POST['password_hash'],PASSWORD_DEFAULT);
        $user->first_name = $_POST['first_name'];
        $user->last_name = $_POST['last_name'];
        //insert the data in the DB
        $user->insert();

        $_SESSION['user_id'] = $user->user_id;


        //redirect the user to another page
        header('location:/User/setup2fa');
       }
       //else show the register view again
       else {
        $this->view('User/registration',['alertMsg' => $msg]);
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
            $_SESSION['error_message'] = 'Wrong password or username, please retry';
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
    //
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

    #[\app\accessFilters\Login]
    function viewAccount() {
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

    function update2FA() {
        $user = new \app\models\User();
        $options = new AuthenticatorOptions();
		$authenticator = new Authenticator($options);
		if($_SERVER['REQUEST_METHOD'] === 'POST'){ 
            //get the session id to get the users information
            $user = $user->getByID($_SESSION['user_id']);
             //if the password is right, let the user change their secret
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
                //redirect the user to the successfull page
                echo 'You successfully updated your 2FA ! <br> You will be redirected to the Home page in a few seconds...';
                //redirect the user to another page after 3 seconds
                header('refresh:2; url = http://localhost/home');

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

    function verifyPassword() {
        //check that the user has submitted something
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $user = new \app\models\User();
            $user = $user->getByID($_SESSION['user_id']);
            $password = $_POST['password'];
            $options = new AuthenticatorOptions();
            $authenticator = new Authenticator($options);
            $authenticator->setSecret($_SESSION['secret_setup']);
            //check if the password matches the user account password
            if ($user && password_verify($password,$user->password_hash) && $authenticator->verify($_POST['totp'])) {
                //redirect the user to update2fa to scan the QR code again
                unset($_SESSION['secret']);
                header('location:/User/update2fa');
            }
            else {
                //try again
                $msg = 'Wrong password or Wrong secret, please try again';
                $this->view('User/passwordCheck',$msg);
            }
        }
        else {
            $this->view('User/passwordCheck');
        }
    }
    #[\app\accessFilters\Login]
    function registerLocation() {
        //check if the user has send information via the form
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //get the user informations from the session
            $user = new \app\models\User();
            $user = $user->getByID($_SESSION['user_id']);
            //get all the informations from the POST
            $address = $_POST['address'];
            $street = $_POST['street'];
            $city =  $_POST['city'];
            $province = $_POST['province'];
            $postal_code = $_POST['postal_code'];
            //make sure that the user entered all the required informations
            if ($address != null && $street != null && $city != null && $province != null && $postal_code != null) {
                $user->address = $address;
                $user->street = $street;
                $user->city = $city;
                $user->province = $province;
                $user->postal_code = $postal_code;
                //update the user informations
                $user->updateLocation(); 
                
                //redirect the user to their view account
                echo 'You successfully registered your location to your account ! <br> You will be redirected to your account page in a few seconds...';
                header('refresh:1; url = http://localhost/User/account');
            }
            else {
                $msg = 'You did not fill the form completly. Please make to sure to fill all the boxes.';
                $this->view('User/registerLocation',$msg);  
            }
        }
        else {
            $this->view('User/registerLocation');
        }
    }
    #[\app\accessFilters\Login]
    function updateLocation() {
        //get the user informations from the session
        $user = new \app\models\User();
        $user = $user->getByID($_SESSION['user_id']);
        //check if the user has send information via the form
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //get all the informations from the POST
            $address = $_POST['address'];
            $street = $_POST['street'];
            $city =  $_POST['city'];
            $province = $_POST['province'];
            $postal_code = $_POST['postal_code'];
            //make sure that the user entered all the required informations
            if ($address != null && $street != null && $city != null && $province != null && $postal_code != null) {
                $user->address = $address;
                $user->street = $street;
                $user->city = $city;
                $user->province = $province;
                $user->postal_code = $postal_code;
                //update the user informations
                $user->updateLocation(); 
                
                //redirect the user to their view account
                echo 'You successfully updated your location to your account ! <br> You will be redirected to your account page in a few seconds...';
                header('refresh:1; url = http://localhost/User/account');
            }
            else {
                $msg = 'You did not fill the form completly. Please make to sure to fill all the boxes.';
                $this->view('User/updateLocation',$msg);  
            }
        }
        else {
            $this->view('User/updateLocation',$user);
        }
    }
}





