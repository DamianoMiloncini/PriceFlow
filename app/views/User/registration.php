<html>

    <head>
        <title>User registration</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">
    </head>

    <body>
    <div class='container'>
        
        <form method="POST" action="">
        <div class="form-group">
            <label>Username<input type="text" name="username" placeholder="micka"/></label>
        </div>
            <label>Password</label>
            <input type="password" name="password_hash" placeholder="1234!"><br>
            <label>First Name</label>
            <input type="text" name="first_name" placeholder="Michaella"><br>
            <label>Last Name</label>
            <input type="text" name="last_name" placeholder="Bob"><br>
            <input class = "userBtn" type="submit" name="button" value="Submit"><br>
        </form>
</div>




    </body>


</html>