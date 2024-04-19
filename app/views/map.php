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
    </style>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="">

    </script>

</head>



<body>
<?php include 'app/views/topBar.php'; ?>

    <div id="map"></div>

    <!-- <?php

        // $address = "$data->address $data->city $data->province $data->postal_code"; // Put your address here
        // print_r($address);

        // $region = "";

        // $json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false&region=$region");
        // $json = json_decode($json);

        // $lat = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lat'};
        // $long = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lng'};
        // echo $lat."
        // ".$long;
        ?> 
        -->

    <script>

        var requestOptions = {
        method: 'GET',
        };

        fetch("https://api.geoapify.com/v1/geocode/search?text=38%20Upper%20Montagu%20Street%2C%20Westminster%20W1H%201LJ%2C%20United%20Kingdom&apiKey=f9b7061858b746fc84136bc23dfef6b0", requestOptions)
        .then(response => response.json())
        .then(result => console.log(result))
        .catch(error => console.log('error', error));

        // These coordinates will be changed depending on the users location - By default, it is set to Montreal
        var map = L.map('map').setView([45.5019, -73.5674], 13); // 13 refers to the default zoom when loaded

        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);

        // CREATING MARKERS - These will be generated when we fetch the closest stores.
        var marker = L.marker([45.5019, -73.5674]).addTo(map); // Coordinates will be changed to the stores location

        // CREATING CIRCLE (Can be a radius around the Users vicinity)
        var circle = L.circle([45.5019, -73.5674], {
            color: 'red',
            fillColor: '#f03',
            fillOpacity: 0.5,
            radius: 500
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
            marker.bindPopup("<b>Pop up!</b><br>This will be the css pop up for every location").openPopup();

            // Circle pop up:
            circle.bindPopup("I am a circle.");


    </script>

</body>

</html>