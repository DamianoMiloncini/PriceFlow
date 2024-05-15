<?php

namespace app\controllers;

use app\models\Item;

require("app/scraping/metro.php");
require("app/scraping/superc.php");


class ItemController extends \app\core\Controller
{

    function search($query)
    {
        $_conn = \app\core\Model::getConnection(); // Assuming you have a method to get the connection in Model class

        if (Item::doesQueryExist($query, $_conn) == true) {
            //print_r("QUERY EXISTS");
            $itemObjects = Item::loadItems($query, $_conn);
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects
        } else {
            //print_r("QUERY DOESN'T EXIST");
            Item::saveQuery($query, $_conn);
            // Call the scraping function from metro.php to get the items

            // $supercItems = scrapeSuperCItems($query);
            //print_r("super C nothing?");
            //print_r($supercItems);

            // $metroItems = scrapeMetroItems($query);
            //print_r("metro nothing?");
            //print_r($metroItems);            

            // Initialize an empty array to store Item objects
            $itemObjects = [];

            // foreach ($supercItems as $item) {
            //     $newItem = new Item($item); // Assuming $item is an array containing item details
            //     $itemObjects[] = $newItem;

            //     //print_r($item);
            //     //print_r("new item!!sssssssssssssssssssssssssssssssssssssssssssssssssssssssssL");

            //     //print_r($newItem);

            //     if ($newItem->doesItemExist() == true) {
            //         //print_r(" ITEM EXISTS");

            //         if ($newItem->doesItemQueryCombinationExist($query) == false) {
            //             $newItem->saveItemQueryCombination($query);
            //         }
            //     } else {
            //         //print_r(" ITEM DOES NOT EXIST");
            //         $newItem->saveItem($query);
            //     }
            // }

            // foreach ($metroItems as $item) {
            //     $newItem = new Item($item); // Assuming $item is an array containing item details
            //     $itemObjects[] = $newItem;

            //     //print_r($item);
            //     //print_r("new item!!sssssssssssssssssssssssssssssssssssssssssssssssssssssssssL");

            //     //print_r($newItem);

            //     if ($newItem->doesItemExist() == true) {
            //         //print_r(" ITEM EXISTS");

            //         if ($newItem->doesItemQueryCombinationExist($query) == false) {
            //             $newItem->saveItemQueryCombination($query);
            //         }
            //     } else {
            //         //print_r(" ITEM DOES NOT EXIST");
            //         $newItem->saveItem($query);
            //     }
            // }

            // Pass the item objects to the view
            $this->view('Item/itemList', ['items' => $itemObjects]); // Change $metroItems to $itemObjects
        }
    }

    function showItem($item_id)
    {
        $itemModel = new \app\models\Item();
        // $_conn = \app\core\Model::getConnection(); // Assuming you have a method to get the connection in Model class

        $item = $itemModel->getById($item_id);
        //variable to store the specific store search
        $stores = [];

       //get initiate the user model class object
       $user = new \app\models\User();
       //get the user id from the session
       $user = $user->getByID($_SESSION['user_id']);
       $userLatitude = null;
       $userLongitude = null;

       //check if the user has a registered location
       if ($user->address != null) { //if the address is not null, ik the location is configured
           // Getting user's location
           $userAddress = $user->address;
           $userStreet = $user->street;
           $userPostalCode = $user->postal_code;
           $userCity = $user->city;
           $userProvince = $user->province;
           //if the store is not already in the db, add it 
           $storeDB = new \app\models\SearchStore();

           $storeDB = $storeDB->getAll();
           //format the full user location
           $userLocation = "$userAddress $userStreet $userCity $userProvince $userPostalCode";

           $api_url = "https://api.geoapify.com/v1/geocode/search?text=" . urlencode($userLocation) . "&apiKey=f9b7061858b746fc84136bc23dfef6b0";
           // Fetching the data from the API
           $response = file_get_contents($api_url);

           // Decoding JSON response that is generated
           $coordinates = json_decode($response, true);

           // Check if the response is successful
           if ($coordinates && isset($coordinates['features'][0])) {
               // Gettting the latitude and longitude!!
               $userLatitude = $coordinates['features'][0]['properties']['lat'];
               $userLongitude = $coordinates['features'][0]['properties']['lon'];
           }
       }

       //Google Places API endpoint
       $apiEndpoint = 'https://places.googleapis.com/v1/places:searchNearby';

       //My API key :) i took a 90 day trial for this project esti
       $apiKey = 'AIzaSyC7s5_jgqD1sKbMsREIn68_Rk_jNYnfvnQ';

       //Radius (in meters) for nearby search
       $radius = 2500;

       //print_r($userLatitude);
       //print_r($userLongitude);

       //Construct the request payload as a JSON object
       $payload = json_encode(array(
           "includedTypes" => ["supermarket"],
           // "keyword" => $storeName,
           "maxResultCount" => 10, //the maximum amount of results i want to have
           "locationRestriction" => array( //location restrication is basically basing the search on the user's location
               "circle" => array(
                   "center" => array(
                       "latitude" => $userLatitude,
                       "longitude" => $userLongitude,
                   ),
                   "radius" => $radius
               )
           )
       ));

       //some required headers 
       $headers = array(
           'Content-Type: application/json',
           'X-Goog-Api-Key: ' . $apiKey,
           'X-Goog-FieldMask: places.displayName,places.formattedAddress,places.currentOpeningHours,places.internationalPhoneNumber' //specifies what parameters do i want to have in my return
       );

       //cURL session is a way to make HTTP requests from PHP
       $ch = curl_init();

       //Set cURL options
       curl_setopt($ch, CURLOPT_URL, $apiEndpoint);
       curl_setopt($ch, CURLOPT_POST, 1);
       curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
       curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
       curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

       //Execute cURL request
       $response = curl_exec($ch);

       //verify if im able to fetch from the API
       if ($response === FALSE) {
           die('Error: Unable to fetch data from Google Places API');
       }

       //Close cURL session
       curl_close($ch);

       //Decode the JSON response
       $results = json_decode($response, true);

       //Check if there are any results found
       //search store name
       if (str_contains($item_id, 'metro')) {
           $storeName = 'Metro';
       } else if (str_contains($item_id, 'superc')) {
           $storeName = 'Super C';
       } else {
           $storeName = null; //some error handling in case 
       }
       // Extract and display the store names and addresses based on the user filter
       if ($storeName != null && isset($results['places'])) {
           foreach ($results['places'] as $place) {
               if (str_contains($place['displayName']['text'], $storeName)) { // Check if the place is a Metro store
                   //add the api places in an array to send in the view later
                   $stores[] = $place;

               }
           }
       } else {
           $stores = null;
       }
       
       if ($item) {
        // Item found, print or return it
        $this->view('Item/individual', ['item' => $item, 'stores' => $stores]);
    } else {
        // Item not found
        echo "Item not found.";
    }
    }


    public function storeDetails()
    {
        // Retrieve the store information from the URL parameter & decode the json data
        $storeInfo = isset($_GET['store']) ? json_decode(urldecode($_GET['store']), true) : null;

        // Pass the store information to the view
        $this->view('storeDetails', $storeInfo);
    }
}
