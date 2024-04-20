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
    <?php include 'app/views/topBar.php'; ?>

    <div id="map"></div>

    <script>
        // These coordinates will be changed depending on the users location - By default, it is set to Montreal
        var map = L.map('map').setView([45.5019, -73.5674], 13); // 13 refers to the default zoom when loaded

        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);
    </script>

    <?php foreach ($data as $store) :

        $address = $store['address'];
        $city = $store['city'];
        $province = $store['province'];
        $postalCode = $store['postal_code'];
        
        $location = "$address $city $province $postalCode";

        $api_url = "https://api.geoapify.com/v1/geocode/search?text=" . urlencode($location) . "&apiKey=f9b7061858b746fc84136bc23dfef6b0";

        // Fetching the data from the API
        $response = file_get_contents($api_url);

        // Decoding JSON response that is generated
        $coordiantes = json_decode($response, true);

        // Check if the response is successful
        if ($coordiantes && isset($coordiantes['features'][0])) {
            // Gettting the latitude and longitude!!
            $latitude = $coordiantes['features'][0]['properties']['lat'];   
            $longitude = $coordiantes['features'][0]['properties']['lon'];
        }
    ?>

        <script>
            // CREATING MARKERS - These will be generated when we fetch the closest stores.
            var marker = L.marker([<?php echo $latitude ?>, <?php echo $longitude ?>]).addTo(map); // Coordinates will be changed to the stores location
            marker.bindPopup("<img src='app/resources/metroTestImage.jpg' id='metroImg'> <br> <h5> <?php echo $store['store_name'] ?> </h5> <?php echo $store['address'] ?>").openPopup();
        </script>

    <?php endforeach ?>


    <!-- EXTRA MAP FEATURE -->
    <script>
        // CREATING CIRCLE (Can be a radius around the Users vicinity)
        // var circle = L.circle([45.5019, -73.5674], {
        //     color: 'red',
        //     fillColor: '#f03',
        //     fillOpacity: 0.5,
        //     radius: 500
        // }).addTo(map);

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

</body>

</html>