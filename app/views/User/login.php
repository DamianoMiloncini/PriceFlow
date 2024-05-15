<html>

    <head>
        <title><?=  __('User Login') ?></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="\app\views\Styles\styles.css">
        <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-form {
            width: 300px;
            height: 400px;
            padding: 20px;
            border-radius: 10px;
            background-color: #f8f9fa; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        }

        .input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
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
    </style>
    </head>

    <body>
        <?php 
        if (isset($_SESSION['error_message'])) {
            echo "<script>alert('{$_SESSION['error_message']}')</script>";
            unset($_SESSION['error_message']);
        }
        ?>
    <div class="login-form">
    <h3><?= __('Log In')?></h3>
        <form method="POST" action="">
            <label><?= __('Username') ?></label>
            <input class = "input" type="text" name="username" placeholder="micka"><br>
            <label><?= __('Password') ?></label>
            <input class = "input" type="text" name="password_hash" placeholder="1234!"><br><br>
            <input class = "userBtn" type="submit" name="Login" value="<?= __('Submit') ?>"><br>
            <a class="userBtn" href="/home"><?= __('Home') ?></a>
        </form>
    </div>



    </body>


</html>