<?php
namespace app\controllers;

class Welcome extends \app\core\Controller {

    function index(){
        
        $this->view('topBar');

    }

}
