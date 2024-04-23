<html>

    <head>
    <title>User's profile </title>

</head>
    <body>
    <div id = 'profileContainer'> 
        <!-- display user's information -->
         <label>Username</label>
            <input type="text" name="username" value = '<?= $data->username ?>' readonly = "readonly"/><br>
            <!-- <label>Password</label>
            <input type="password" name="password_hash" placeholder="1234!"><br> -->
            <label>First Name</label>
            <input type="text" name="first_name" value = '<?= $data->first_name ?>' readonly = "readonly"/><br>
            <label>Last Name</label>
            <input type="text" name="last_name" value = '<?= $data->last_name ?>' readonly = "readonly"/><br>

            <!-- check if the user has a registered a location, else don't show the rest of the html -->
            <?php
                $user = new \app\models\User();
                $user = $user->getByID($_SESSION['user_id']);

                //if user has an address saved in their account, it means they did register a location
                if ($user->address != null) {
                    //"<<<HTML allows me to write multiple html lines with only one echo
                    echo <<<HTML
                    <label>Address</label>
                    <input type="number" name="address" value="$data->address" readonly="readonly"/><br>
                    <label>Street</label>
                    <input type="text" name="street" value="$data->street" readonly="readonly"/><br>
                    <label>City</label>
                    <input type="text" name="city" value=" $data->city " readonly="readonly"/><br>
                    <label>Province</label>
                    <input type="text" name="province" value="$data->province" readonly="readonly"/><br>
                    <label>Postal Code</label>
                    <input type="text" name="postal_code" value="$data->postal_code" readonly="readonly"/><br>
                    <a class = "button" href="/User/updateLocation">Update Location</a> <br><br>
                    HTML;
                    
                }
            ?>
             <a class = "button" href="/User/updateAccount">Update Profile</a> <br><br>
             <a class = "button" href="/User/passwordCheck">Update 2FA secret</a><br><br>
             <a class = "button" href="/User/registerLocation">Register a favorite Location</a><br><br>
             
             <a id="cancel" href="/home">Home</a>
    </div>

    </body>


<html>