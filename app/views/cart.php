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
            <div id="cartHeading">
                <h3>Your Cart</h3>
                <button type="text" id="checkoutButton"><i class="bi bi-cart-check-fill"></i> Checkout: $<?php echo isset($data['itemsInCart'][0]['cart_price']) ? $data['itemsInCart'][0]['cart_price'] : '0'; ?>

                </button>
            </div>
            <h6>Thank you for choosing PriceWave!</h6>

            <div id="cartItems">
                <?php foreach ($data['itemsInCart'] as $item) : ?>
                    <div class="itemCard">
                        
                        <img class="itemImages" src=<?php echo $item['image'] ?> >
                        
                        <!-- <div id ="itemInformation"> -->
                            <h5><?php echo $item['name'] ?></h5>
                            <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
                            <h6 style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
                            <h6 style="margin-left:2%;">Price: $<?php echo $item['price'] ?></h6>
                            <h6 style="margin-left:2%;">In cart: <?php echo $item['quantity_purchased'] ?></h6>
                        <!-- </div> -->
                        <h6 style="margin-left:2%;">
                            <?php 
                            
                                $totalItemPrice = $item['price'] * $item['quantity_purchased'];
                                echo("Total: $" . $totalItemPrice);

                            ?>
                        </h6>

                        <form method='post' action=''>
                        <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?>">
                        <input type="hidden" name="cart_id" value="<?php echo $item['cart_id'] ?>">
                            <div id = "cartButtons">
                                <input type="submit" name="minus1" value="-" class="bttns">
                                <input type="submit" name="add1" value="+" class="bttns">
                                <button type="submit" class="bttns" name="deleteButton">
                                <i class="bi bi-trash3"></i>
                                </button>

                            </div>

                        </form>
                        
                    </div>  
                <?php endforeach ?>
            </div>
        </div>

        <div id="cartMap">
            <?php include 'app/views/map.php'; ?>
        </div>
        

    </body>
</html>