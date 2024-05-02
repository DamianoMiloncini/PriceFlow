<?php

namespace app\controllers;


class searchLocation extends \app\core\Controller {
    
    function search() {
        //variable to store the specific store search
        $stores = [];
        //get initiate the user model class object
        $user = new \app\models\User();
        //get the user id from the session
        $user = $user->getByID($_SESSION['user_id']);
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
          
         



            //echo($userLocation);
            $api_url = "https://api.geoapify.com/v1/geocode/search?text=" . urlencode($userLocation) . "&apiKey=f9b7061858b746fc84136bc23dfef6b0";
            // Fetching the data from the API
            $response = file_get_contents($api_url);
    
            // Decoding JSON response that is generated
            $coordiantes = json_decode($response, true);
    
            // Check if the response is successful
            if ($coordiantes && isset($coordiantes['features'][0])) {
                // Gettting the latitude and longitude!!
                $userLatitude = $coordiantes['features'][0]['properties']['lat'];   
                $userLongitude = $coordiantes['features'][0]['properties']['lon'];
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
        if (!isset($results['places'])) {
            die('Error: No nearby stores found');
        }

        // Extract and display the store names and addresses based on the user filter
        foreach ($results['places'] as $place) {
            if(str_contains($place['displayName']['text'], 'Metro')) { //TODO: base this constraint with the user filter
                $stores[] = $place;
                echo $place['formattedAddress'];
                echo "<br>";
            }

        }

        echo "<br>";
       foreach($storeDB as $storeExists) {
        //convert the address in the db 
         $storePostal_Code = "{$storeExists['postal_code']} ";
         //check if the store is not already in the db
         if ($storePostal_Code != $userLocation) {
           //$storeDB->insert(); 
         }
       //   $storeExists->city $storeExists->province $storeExists->postal_code
         echo $storePostal_Code;
         echo "<br>";
       }

        // //return data to the store details
        // $this->storeDetails($stores);
        //send the search result to the view
        $this->view('searchLocation',$stores);

    }

        // //call the view with the search results to display details
        // function storeDetails($searchResult) {
        //     //call the method search to get what store
        //     $this->view('storeDetails',$searchResult);
        //  }
    }

