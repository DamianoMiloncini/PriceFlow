<?php

namespace app\controllers;

use app\models\Item;

require("app/scraping/metro.php");

class ItemController extends \app\core\Controller
{

    function search($query)
    {
        $conn = \app\core\Model::getConnection(); // Assuming you have a method to get the connection in Model class

        if (Item::doesQueryExist($query, $conn) == true) {
            $itemObjects = Item::loadItems($query, $conn);
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects

        } else {
            Item::saveQuery($query, $conn);
            // Call the scraping function from metro.php to get the items
            $metroItems = scrapeMetroItems($query);
            // $supercItems = scrapeSupercItems($query);

            // Initialize an empty array to store Item objects
            $itemObjects = [];

            // Instantiate Item objects for each scraped item
            foreach ($metroItems as $item) {
                $itemObjects[] = new Item($item); // Assuming $item is an array containing item details
            }

            // foreach ($supercItems as $item) {
            //     $itemObjects[] = new Item($item); // Assuming $item is an array containing item details
            // }

            // Pass the item objects to the view
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects
        }
    }
}
