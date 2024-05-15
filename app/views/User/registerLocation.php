<html>

<head>
    <title>Register Location</title>
    <!-- need some JS :) -->
    <script>
            window.onload = function() {
        populateCities();
    };
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

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">

</head>

    <body>
    <div class='container'>
    <form id="locationInfo" method="POST" action="">
        <h3><?= __('Enter your location details') ?></h3>
        <div class="form-group">
            <label><?= __('Address') ?><input type="number" class="form-control" name="address" placeholder="821"></label>
        </div>
        <div class="form-group">
            <label><?= __('Street') ?><input type="text" class="form-control" name="street" placeholder="Sainte Croix Ave"></label>
        </div>
        <div class="form-group">
            <label><?= __('City') ?><select id="city" class="form-control" name="city">
                    <!-- is going to be populated by JS -->
                    <option value="Montreal">Montreal</option> <!-- I have to populated so that the Codeception sees the values -->
                    <option value="Laval">Laval</option>
                    <option value="Montreal-Nord">Montreal-Nord</option>
                    <option value="Quebec">Quebec</option>
                    <option value="Toronto">Toronto</option>
                    <option value="Ottawa">Ottawa</option>
                    <option value="Mississauga">Mississauga</option>
                    <option value="Brampton">Brampton</option>
                </select>
            </label>
        </div>
        <div class="form-group">
            <label><?= __('Province') ?><select id="province" class="form-control" onchange="populateCities()" name="province">
                    <option value="Ontario">Ontario</option>
                    <option value="Quebec">Quebec</option>
                </select>
            </label>
        </div>
        <div class="form-group">
            <label><?= __('Postal Code') ?><input type="text" class="form-control" name="postal_code" placeholder="H4L 3X9"></label>
        </div>
        <input type="submit" class="userBtn" name="button" value="<?= __('Save Location') ?> ">
    </form>
    </div>

    </body>
</html>