<?php
namespace app\core;

// Superclass for all the controller methods in the controllers folder
class Controller{
	function view($name, $data=null){
		//load the view files to present them to the Web user
		if(is_array($data) && !array_is_list($data)){
			extract($data);
		}
		include('app/views/' . $name . '.php');
	}
}