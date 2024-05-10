<html>

    <head>
        <title><?= __('User registration') ?></title>

    </head>

    <body>
    <div>
        <form method="POST" action="">
            <label><?= __('Username') ?></label>
            <input type="text" name="username" placeholder="micka"><br>
            <label><?= __('Password') ?></label>
            <input type="password" name="password_hash" placeholder="1234!"><br>
            <label><?= __('First Name') ?></label>
            <input type="text" name="first_name" placeholder="Michaella"><br>
            <label><?= __('Last Name') ?></label>
            <input type="text" name="last_name" placeholder="Bob"><br>
            <input type="submit" name="button" value="<?= __('Submit') ?>"><br>
        </form>
    </div>



    </body>


</html>