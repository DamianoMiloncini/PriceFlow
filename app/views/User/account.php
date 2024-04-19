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
            <!-- <label>Address</label>
            <input type="number" name="address" value = '<?= $data->address ?>' readonly = "readonly"/><br>
            <label>Street</label>
            <input type="text" name="street" value = '<?= $data->street ?>' readonly = "readonly"/><br>
            <label>City</label>
            <input type="text" name="city" value = '<?= $data->city ?>' readonly = "readonly"/><br>
            <label>Province</label>
            <input type="text" name="province" value = '<?= $data->province ?> ' readonly = "readonly"/><br>
            <label>Postal Code</label> -->
            <input type="text" name="postal_code" value = '<?= $data->postal_code ?>' readonly = "readonly"/><br>
            <a id="Update Profile" href="/User/updateAccount">Update Profile</a>
             <a id="Update Location" href="/User/updateLocation">Update Location</a>  <!--//to change  -->
             <a id="Update  2FA secret" href="/User/passwordCheck">Update 2FA secret</a>
             <a id="cancel" href="/home">Home</a>
    </div>

    </body>


<html>