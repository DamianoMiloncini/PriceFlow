<html>

<head>
    <title>User's profile </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">
    <style>
        .address-table {
            width: 100%;
            border-collapse: collapse;
        }

        .address-table td {
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }

        .address-table label {
            font-weight: bold;
        }
    </style>

</head>

<body>
    <div id='profileContainer'>
        <!-- display user's information -->
        <div class='container'>
        <table class="address-table">
            <tr>
               <td><label><?= __('Username') ?></label></td> 
                <td><input type="text" name="username" value = '<?= $data->username ?>' readonly = "readonly"/></td><br>
            </tr>
            <tr>
                <td><label><?= __('First Name') ?></label></td>
                <td><input type="text" name="first_name" value = '<?= $data->first_name ?>' readonly = "readonly"/></td><br>
            </tr>

            <tr>
                <td><label><?= __('Last Name') ?></label></td>
                <td><input type="text" name="last_name" value = '<?= $data->last_name ?>' readonly = "readonly"/></td><br>
            </tr>

            <tr>
                            <td><label><?= __('Address') ?></label></td>
                            <td><input type="number"name="address" value='<?= $data->address ?>' readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Street') ?></label></td>
                            <td><input type="text"  name="street" value='<?= $data->street ?>' readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('City') ?></label></td>
                            <td><input type="text"  name="city" value='<?= $data->city ?>' readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Province') ?></label></td>
                            <td><input type="text"  name="province" value='<?= $data->province ?>' readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Postal Code') ?></label></td>
                            <td><input type="text" name="postal_code" value='<?= $data->postal_code ?>' readonly="readonly"></td>
                        </tr>
                    </table>
                    <br>
                    <a class="userBtn" href="/User/updateLocation"><?= __('Update Location') ?></a>
            <!-- check if the user has a registered a location, else don't show the rest of the html -->
            <!-- <?php
                $user = new \app\models\User();
                $user = $user->getByID($_SESSION['user_id']);

                //if user has an address saved in their account, it means they did register a location
                if ($user->address != null) {
                    //"<<<HTML allows me to write multiple html lines with only one echo
                    echo <<<HTML
                        <tr>
                            <td><label><?= __('Address') ?></label></td>
                            <td><input type="number"name="address" value="$data->address" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Street') ?></label></td>
                            <td><input type="text"  name="street" value="$data->street" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('City') ?></label></td>
                            <td><input type="text"  name="city" value="$data->city" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Province') ?></label></td>
                            <td><input type="text"  name="province" value="$data->province" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label><?= __('Postal Code') ?></label></td>
                            <td><input type="text" name="postal_code" value="$data->postal_code" readonly="readonly"></td>
                        </tr>
                    </table>
                    <br>
                    <a class="userBtn" href="/User/updateLocation"><?= __('Update Location') ?></a>
                    HTML;


                }
            ?> -->
             <a class="userBtn" href="/User/updateAccount"><?= __('Update Profile') ?></a>
             <a class="userBtn" href="/User/passwordCheck"><?= __('Update 2FA secret') ?></a>
             <a class="userBtn" href="/User/registerLocation"><?= __('Register a favorite Location') ?></a>
             
             <a class="userBtn" href="/home"><?= __('Home') ?></a>
    </div>

</body>


<html>