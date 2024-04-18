<html>

    <head>
    <title>User's profile </title>

</head>
    <body>
    <div id = 'profileContainer'> 
        <!-- display user's information -->
         <label>Username</label>
            <input type="text" name="username" value = '<?= $data->username ?>'><br>
            <!-- <label>Password</label>
            <input type="password" name="password_hash" placeholder="1234!"><br> -->
            <label>First Name</label>
            <input type="text" name="first_name" value = '<?= $data->first_name ?>'><br>
            <label>Last Name</label>
            <input type="text" name="last_name" value = '<?= $data->last_name ?>'><br>
            <label>Address</label>
            <input type="number" name="address" value = '<?= $data->address ?>'><br>
            <label>Street</label>
            <input type="text" name="street" value = '<?= $data->street ?>'><br>
            <label>City</label>
            <input type="text" name="city" value = '<?= $data->city ?>'><br>
            <label>Province</label>
            <input type="text" name="province" value = '<?= $data->province ?>'><br>
            <label>Postal Code</label>
            <input type="text" name="postal_code" value = '<?= $data->postal_code ?>'><br>
    </div>

    </body>


<html>