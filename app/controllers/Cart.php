<?php

namespace app\controllers;


class Cart extends \app\core\Controller
{

    #[\app\accessFilters\Login]
    function loadData(){

        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['minus1'])) {
            $itemToBeUpdated = new \app\models\Cart();

            $itemToBeUpdated->subtractItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['add1'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->addItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['deleteButton'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->removeFromCart($_POST['cart_id'], $_POST['item_id']);
            }
            return;
        }else{
            // Getting all the stores
        $store = new \app\models\Map();
        $store = $store->getAll();

        // Getting user for their location
        $user = new \app\models\User();
        $user = $user->getByID($_SESSION['user_id']);

        // Getting all items in user's cart
        $itemsInCart = new \app\models\Cart();
        $itemsInCart = $itemsInCart->getUserCartItems($_SESSION['user_id']);


        // GETTING THE STORES TO DISPLAY ON THE MAP
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

       //put the user's postal_code
       // $postalCode = 'H3J 2A3';

       //Radius (in meters) for nearby search
       $radius = 5000;

       print_r($userLatitude);
       print_r($userLongitude);

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
    //    //search store name
    //    if (str_contains($item_id, 'metro')) {
    //        $storeName = 'Metro';
    //    } else if (str_contains($item_id, 'superc')) {
    //        $storeName = 'Super C';
    //    } else {
    //        $storeName = null; //some error handling in case 
    //    }
       // Extract and display the store names and addresses based on the user filter

         if (isset($results['places'])) {
            
           foreach ($results['places'] as $place) {
               if (str_contains($place['displayName']['text'], 'Metro')) { // Check if the place is a Metro store
                   //bool to check if the store exists in the db already
                   $stores[] = $place;
              }
           }
           foreach ($results['places'] as $place) {
            if (str_contains($place['displayName']['text'], 'Super C')) { // Check if the place is a Metro store
                //bool to check if the store exists in the db already
                $stores[] = $place;
           }
        }
       } else {
           $stores = null;
       }

        $data = [
            'stores' => $stores,
            'itemsInCart' => $itemsInCart,
            'user' => $user,
            'userLatitude' => $userLatitude,
            'userLongitude' => $userLongitude,
        ];

        
        $this->view('cart', $data);
        }

        
    }
    #[\app\accessFilters\Login]
    function handler(){
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['minus1'])) {
            $itemToBeUpdated = new \app\models\Cart();

            $itemToBeUpdated->subtractItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['add1'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->addItemQuantityInCart($_POST['cart_id'], $_POST['item_id']);
            }
            elseif (isset($_POST['deleteButton'])) {
                $itemToBeUpdated = new \app\models\Cart();

                $itemToBeUpdated->removeFromCart($_POST['cart_id'], $_POST['item_id']);
            }
        }
    }
    #[\app\accessFilters\Login]
    function add($item_id)
    {
        $user_id = $_SESSION['user_id']; // Get user id from session
        $cart = new \app\models\Cart();
        $cart -> addToCart($user_id, $item_id);
        header("Location: /cart");
    }
    #[\app\accessFilters\Login]
    function why($cart_id, $item_id, $method){

        if($method === 'minus'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->subtractItemQuantityInCart($cart_id, $item_id);
        }
        if($method === 'add'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->addItemQuantityInCart($cart_id, $item_id);
        }
        if($method === 'delete'){
            $itemToBeUpdated = new \app\models\Cart();
            $itemToBeUpdated->removeFromCart($cart_id, $item_id);
        }
        
        
        $itemsInCart = new \app\models\Cart();
        $itemsInCart = $itemsInCart->getUserCartItems($_SESSION['user_id']);

        $this->view('cartItems', $itemsInCart);
    }

}
