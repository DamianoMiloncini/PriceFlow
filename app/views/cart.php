<html>
    <head>

        <title>Home</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="app\views\Styles\cartPage.css"> 
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">



    </head>

    <body>

    <div id = "cartTopBar">
        <?php include 'app/views/topBar.php'; ?>
    </div>
        

        

        <div id="cartWrapper">
            <h3>Your Cart</h3>
            <h6>Thank you for choosing PriceWave!</h6>

            <div id="cartItems">
            </div>
        </div>
        <div id="cartMap">
                <?php include 'app/views/map.php'; ?>
            </div>
        

    </body>
</html>