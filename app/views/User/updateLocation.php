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
    <div class='container'>
    <form id="locationInfo" method="POST" action="">
        <h3>Enter your location details</h3>
        <div class="form-group">
            <label>Address<input type="number" class="form-control" name="address" value="<?= $data->address ?>"></label>
        </div>
        <div class="form-group">
            <label>Street<input type="text" class="form-control" name="street" value="<?= $data->street ?>"></label>
        </div>
        <div class="form-group">
            <label>City<select id="city" class="form-control" name="city">
                    <!-- is going to be populated by JS -->
                    <option value="<?= $data->city ?>"><?= $data->city ?></option>
                </select>
            </label>
        </div>
        <div class="form-group">
            <label>Province<select id="province" class="form-control" onchange="populateCities()" name="province">
                    <option value="Ontario" <?= ($data->province == 'Ontario') ? 'selected' : '' ?>>Ontario</option>
                    <option value="Quebec" <?= ($data->province == 'Quebec') ? 'selected' : '' ?>>Quebec</option>
                </select>
            </label>
        </div>
        <div class="form-group">
            <label>Postal Code<input type="text" class="form-control" name="postal_code" value="<?= $data->postal_code ?>"></label>
        </div>
        <br>
        <input type="submit" class="userBtn" name="button" value="Save Location">
    </form>
    </div>
    </body>
</html>