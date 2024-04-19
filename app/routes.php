<?php
$this->addRoute('','Welcome,index');
$this->addRoute('home','Welcome,index');
$this->addRoute('map','Welcome,map');
$this->addRoute('User/registration','User,register');
$this->addRoute('User/login','User,login');
$this->addRoute('User/logout' , 'User,logout');
$this->addRoute('User/updateAccount','User,updateUser');
$this->addRoute('User/setup2fa' , 'User,setup2fa');
$this->addRoute('User/check2fa' , 'User,check2fa');
$this->addRoute('User/account' , 'User,viewAccount');
$this->addRoute('User/passwordCheck' , 'User,verifyPassword');
$this->addRoute('User/update2fa' , 'User,update2fa');