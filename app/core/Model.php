<?php
namespace app\core;

use PDO;
use PDOException;

class Model{
	protected static $_conn = null;
    // Remember: 'self' refers to the class defition and this means we can access static variables
    // Whereas 'this' refers to the objects being created (reference to objects)
	public function __construct(){
		$host = 'localhost';
		$dbname = 'assignment2';
		$user = 'root'; 
		$pass = '';
		try { # MySQL with PDO_MYSQL, PDO acts this middle man betwen SQL and this application
			if(self::$_conn == null){
				self::$_conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
				
				self::$_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			}//otherwise the connection exists
		} catch(PDOException $e) {
			echo $e->getMessage();
		}
	}
}