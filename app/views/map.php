<html>

<head>
    <title>Map API</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />

    <style>
        #map {
            border: none;
            box-shadow: 0 0px 8px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            height: 35%;
            width: 100%;
        }

        .leaflet-popup-content-wrapper {
            /* padding: 0px; */
            /* width: 100%; */
        }

        #metroImg{
            width: 100%;
            border-radius: 5px;
            margin-bottom: 5px;
        }

        
    </style>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="">

    </script>

</head>



<body>

    <!-- Display the map  -->
    <div id="map"></div>

    <?php 
        // Getting user's location
        $userAddress = $user->address;
        $userStreet = $user->street;
        $userPostalCode = $user->postal_code;
        $userCity = $user->city;
        $userProvince = $user->province;

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

    ?>

        <!-- MAP API -->
        <script>
            // These coordinates will be changed depending on the users location - By default, it is set to Montreal
            var map = L.map('map').setView([<?php echo $userLatitude ?>, <?php echo $userLongitude ?>], 13); // 13 refers to the default zoom when loaded

            L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
            }).addTo(map);
        </script>

        <script>
            // CREATING MARKERS - These will be generated when we fetch the closest stores.
            var marker = L.marker([<?php echo $userLatitude ?>, <?php echo $userLongitude ?>]).addTo(map); // Coordinates will be changed to the stores location
            marker.bindPopup("This is you!").openPopup();
        </script>

    <?php foreach ($data['stores'] as $store) :

        $address = $store['address'];
        $city = $store['city'];
        $province = $store['province'];
        $postalCode = $store['postal_code'];
        
        $location = "$address $city $province $postalCode";
        //echo($location);

        $api_url = "https://api.geoapify.com/v1/geocode/search?text=" . urlencode($location) . "&apiKey=f9b7061858b746fc84136bc23dfef6b0";

        // Fetching the data from the API
        $response = file_get_contents($api_url);

        // Decoding JSON response that is generated
        $coordiantes = json_decode($response, true);

        // Check if the response is successful
        if ($coordiantes && isset($coordiantes['features'][0])) {
            // Gettting the latitude and longitude!!
            $storeLatitude = $coordiantes['features'][0]['properties']['lat'];   
            $storeLongitude = $coordiantes['features'][0]['properties']['lon'];
        }

        // Calculate the distance between the user and each store
        $distance = calculateDistance($userLatitude, $userLongitude, $storeLatitude, $storeLongitude);
        //echo($distance);
    ?>

        <script>
            <?php if ($distance <= 2.5) { // Only stores within 2.5km will appear ?>
            // CREATING MARKERS - These will be generated when we fetch the closest stores.
            var marker = L.marker([<?php echo $storeLatitude ?>, <?php echo $storeLongitude ?>]).addTo(map); // Coordinates will be changed to the stores location
            marker.bindPopup("<img src='app/resources/metroTestImage.jpg' id='metroImg'> <br> <h5> <?php echo $store['store_name'] ?> </h5> <?php echo $store['address'] ?>").openPopup();
            <?php }?>
        </script>

    <?php endforeach ?>


    <!-- EXTRA MAP FEATURE -->
    <script>
        //CREATING CIRCLE (Can be a radius around the Users vicinity)
        var circle = L.circle([<?php echo $userLatitude ?>, <?php echo $userLongitude ?>], {
            color: 'red',
            fillColor: '#f03',
            fillOpacity: 0.2,
            radius: 2500
        }).addTo(map);

        // POLYGONS - not sure if well use this
        // var polygon = L.polygon([
        //     [51.509, -0.08],
        //     [51.503, -0.06],
        //     [51.51, -0.047]
        // ]).addTo(map);

        // CREATING POP UPS FOR THE MARKERS
        // In order to generate the same pop up for every store location ( of course changing contents to the appropriate store)
        // I will have to create a css template and append texts

        // Marker pop up:
        // marker.bindPopup("<b>Pop up!</b><br>This will be the css pop up for every location").openPopup();

        // Circle pop up:
        // circle.bindPopup("I am a circle.");
    </script>

    <?php 

    // Using Haversine's formula to calculate the distance between teh user and the locations
    // We are doing this because we only want to show the stores within a 2.5km radius
    function calculateDistance($lat1, $lon1,  $lat2, $lon2){

        // Radius of the Earth in kilometers
        $earthRadius = 6371;

        // Convert latitude and longitude from degrees to radians
        $latFrom = deg2rad($lat1);
        $lonFrom = deg2rad($lon1);
        $latTo = deg2rad($lat2);
        $lonTo = deg2rad($lon2);

        // Calculate the differences
        $latDelta = $latTo - $latFrom;
        $lonDelta = $lonTo - $lonFrom;

        // Haversine formula
        $distance = 2 * $earthRadius * asin(
            sqrt(
                pow(sin($latDelta / 2), 2) +
                cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)
            )
        );

        return $distance; // Distance in kilometers
    }

    ?>

</body>

</html>