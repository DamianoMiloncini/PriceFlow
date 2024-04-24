<html>

<head>
    <title>Register Location</title>
    <!-- need some JS :) -->
    <script>
        function populateCities() {
            var province = document.getElementById("province");
            var citySelect = document.getElementById("city");

            //have an array of cities according to the province
            var cities = {
                "Quebec":  ["Montreal","Laval","Montreal-Nord","Quebec"], //add more cities later on
                "Ontario": ["Toronto","Ottawa","Mississauga","Brampton"] //add more cities later on
            };

            // Clear existing options
            citySelect.innerHTML = "";
            //get the value selected by the user
            var selectedProvince = province.value;

            cities[selectedProvince].forEach(function(city){
                var option = document.createElement("option");
                option.text = city;
                option.value = city;
                citySelect.appendChild(option);
            });
        }
    </script>
</head>

    <body>
        <form id = "locationInfo" method = "POST" action="">
            <h3>Enter your location details</h3>
            <label>Address</label>
            <input type="number" name="address" placeholder="821"><br>
            <label>Street</label>
            <input type="text" name="street" placeholder="Sainte Croix Ave"><br>
            <label>City</label>
            <select id= "city" name="city">
                <!-- is going to be populated by JS -->
            </select><br>
            <label>Province</label>
            <select id = "province" onchange="populateCities()" name = "province">
                <option value="Ontario">Ontario</option>
                <option value="Quebec">Quebec</option>
            </select><br>
            <label>Postal Code</label>
            <input type="text" name="postal_code" placeholder="H4L 3X9"><br>
            <input type="submit" name="button" value="Save Location"><br>
        </form>

    </body>
</html>