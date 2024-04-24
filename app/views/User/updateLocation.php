<html>

<head>
    <title>Update Location</title>
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
        //invoke the populateCities function when the page loads to get the previously selected data from the user
        populateCities(); //to change
    </script>
</head>

    <body>
        <form id = "locationInfo" method = "POST" action="">
            <h3>Enter your location details</h3>
            <label>Address</label>
            <input type="number" name="address" value = '<?= $data->address ?>' ><br>
            <label>Street</label>
            <input type="text" name="street" value = '<?= $data->street ?>'><br>
            <label>City</label>
            <select id= "city" name="city">
                <!-- is going to be populated by JS -->
                <option value = '<?= $data->city ?>'><?= $data->city ?></option>
            </select><br>
            <label>Province</label>
            <select id = "province" onchange="populateCities()" name = "province" value = '<?= $data->province ?>'>
                <option value="Ontario" <?=  ($data->province == 'Ontario') ? 'selected' : '' ?>>Ontario</option>
                <option value="Quebec" <?=  ($data->province == 'Quebec') ? 'selected' : '' ?>>Quebec</option>
            </select><br>
            <label>Postal Code</label>
            <input type="text" name="postal_code" value = '<?= $data->postal_code ?>'><br>
            <input type="submit" name="button" value="Save Location"><br>
        </form>

    </body>
</html>