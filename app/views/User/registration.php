<html>

<head>
    <title><?= __('User registration') ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="\app\views\Styles\styles.css"> -->
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 300px;
            padding: 20px;
            width: 300px;
            height: 550px;
            padding: 15px;
            border-radius: 10px;
            background-color: #f8f9fa; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .userBtn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            display: block;
            text-align: center; 
            text-decoration: none;
        }

        .userBtn:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
<?php 
if (isset($_SESSION['error_message'])) {
    echo "<script>alert('{$_SESSION['error_message']}')</script>";
    unset($_SESSION['error_message']);
}
?>
    
    <div class='container'>
    <h3><?= __('Create your account')?></h3>
        <form method="POST" action="">
            <div class="form-group">
                <label><?= __('Username') ?><input type="text" name="username" placeholder="micka" /></label>
            </div>
            <label><?= __('Password') ?></label>
            <input type="password" name="password_hash" placeholder="1234!"><br>
            <label><?= __('First Name') ?></label>
            <input type="text" name="first_name" placeholder="Michaella"><br>
            <label><?= __('Last Name') ?></label>
            <input type="text" name="last_name" placeholder="Bob"><br>
            <input class="userBtn" type="submit" name="create" value="<?= __('Submit') ?>"><br>
            <a class="userBtn" href="/home"><?= __('Home') ?></a>
        </form>
    </div>




</body>


</html>