<?php

namespace app\controllers;

use app\models\Item;
require("app/scraping/metro.php");

class ItemController extends \app\core\Controller {

    function search($query=null) {    
        // Call the scraping function from metro.php to get the items
        $items = scrapeMetroItems();
    
        // Initialize an empty array to store Item objects
        $itemObjects = [];
    
        // Instantiate Item objects for each scraped item
        foreach ($items as $item) {
            $itemObjects[] = new Item($item); // Assuming $item is an array containing item details
        }
    
        // Pass the item objects to the view
        $this->view('Item/itemList', ['items' => $itemObjects]); // Change $items to $itemObjects
    }
    
    function listItems() {
        // Your code to list items goes here
    }
}
