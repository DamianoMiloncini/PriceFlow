<?php

namespace app\controllers;

class Bookmark extends \app\core\Controller {

    //function to add items to favorite (TODO!!)

    //function to display all the user's favorite items
    function displayFavorites() {
        //create an array to store the item's informations
        $array = array();
       //get the user id from the session
        $user_id = $_SESSION['user_id'];
       //instantiate the Bookmark model class
        $bookmark = new \app\models\Bookmark;
       //call the getAll method with the userId
        $items = $bookmark->getAll($user_id);
        //instantiate the item model class
        $item = new \app\models\Item();
        //get the item object to get the informations such as name, brand and price
        foreach($items as $itemInformation) {
            //get the item information by calling the getById method from the Item object with the bookmark item_id
            $array[] = $item->getById($itemInformation['item_id']);
        }
       //send the data to the view
       $this->view('User/Bookmarks',$array);
    }

    function delete($item_id) {
        //Instantiate the Bookmark model class
        $bookmark = new \app\models\Bookmark;
        //Call the delete method with the item ID
        $bookmark->delete($item_id);
        //Redirect back to the favorites page (kind of a refresh)
        header("Location: /User/bookmark");
    }
}