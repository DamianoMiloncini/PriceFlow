<?php

namespace app\controllers;

use app\models\Item;

require("app/scraping/metro.php");

class ItemController extends \app\core\Controller
{

    function search($query)
    {
        $_conn = \app\core\Model::getConnection(); // Assuming you have a method to get the connection in Model class

        if (Item::doesQueryExist($query, $_conn) == true) {
            print_r("\n\n\n\n\n\n\n QUERY EXIST");
            $itemObjects = Item::loadItems($query, $_conn);
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects
        } else {
            print_r("\n\n\n\n\n\n\QUERY don't EXIST");
            Item::saveQuery($query, $_conn);
            // Call the scraping function from metro.php to get the items
            $metroItems = scrapeMetroItems($query);
            print_r("\n\n\n\n\n\n\nnothing?");
            print_r($metroItems);


            // $supercItems = scrapeSupercItems($query);

            // Initialize an empty array to store Item objects
            $itemObjects = [];

            // Instantiate Item objects for each scraped item
            foreach ($metroItems as $item) {
                $newItem = new Item($item); // Assuming $item is an array containing item details
                $itemObjects[] = $newItem;

                print_r($item);
                print_r("new item!!sssssssssssssssssssssssssssssssssssssssssssssssssssssssssL");

                print_r($newItem);

                if ($newItem->doesItemExist() == true) {
                    print_r("\n\n\n\n\n\n\n ITEM EXISTS");

                    if ($newItem->doesItemQueryCombinationExist($query) == false) {
                        $newItem->saveItemQueryCombination($query);
                    }
                } else {
                    print_r("\n\n\n\n\n\n\n ITEM DOES NOT EXIST");
                    $newItem->saveItem($query);
                }
            }

            // foreach ($supercItems as $item) {
            //     $itemObjects[] = new Item($item); // Assuming $item is an array containing item details
            // }

            // Pass the item objects to the view
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects
        }
    }

    function showItem($item_id) {
        $itemModel = new Item();
        $_conn = \app\core\Model::getConnection(); // Assuming you have a method to get the connection in Model class

        $item = $itemModel->getById($item_id);
        
        if ($item) {
            // Item found, print or return it
            $this->view('Item/individual', ['item' => $item]); 
        } else {
            // Item not found
            echo "Item not found.";
        }
    }
    
}
