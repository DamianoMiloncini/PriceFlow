<html>

<head>

    <title>Home</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="app\views\Styles\cartPage.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

</head>

<body>

    <div id="cartTopBar">
        <?php include 'app/views/topBar.php'; ?>
    </div>

    <div id="cartWrapper">
        <div id="cartHeading">
            <h3><?= __('Your Cart') ?></h3>
            <button type="text" id="checkoutButton"><i class="bi bi-cart-check-fill"></i> <?= __('Checkout:') ?> $<?php echo isset($data['itemsInCart'][0]['cart_price']) ? $data['itemsInCart'][0]['cart_price'] : '0'; ?>

            </button>
        </div>
        <h6><?= __('Thank you for choosing PriceWave!') ?></h6>

        <div id="cartItemsContainer">
            <div id="cartItems">
                <?php foreach ($data['itemsInCart'] as $item) : ?>
                    <div class="itemCard">

                        <img class="itemImages" src=<?php echo $item['image'] ?>>


                        <!-- <div id ="itemInformation"> -->
                        <h5><?php echo $item['name'] ?></h5>
                        <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
                        <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
                        <h6 style="margin-left:2%;">Price: $<?php echo $item['price'] ?></h6>
                        <h6 id="quantity_purchased" style="margin-left:2%;">In cart: <?php echo $item['quantity_purchased'] ?></h6>
                        <!-- </div> -->
                        <h5 style="margin-left:2%;">
                            <?php

                            $totalItemPrice = $item['price'] * $item['quantity_purchased'];
                            echo ("Total: $" . $totalItemPrice);

                            ?>
                        </h5>

                        <input id="itemId" type="hidden" name="item_id" value="<?php echo $item['item_id']; ?>">
                        <input id="cartId" type="hidden" name="cart_id" value="<?php echo $item['cart_id']; ?>">
                        <div id="cartButtons">
                            
                            <button type="submit" id="minusBtn" name="minus1" class="bttns" onClick="minus1('<?php echo $item['item_id']; ?>'); updateCheckout();">-</button>
                            <button type="submit" id="addBtn" name="add1" class="bttns" onClick="add1('<?php echo $item['item_id']; ?>'); updateCheckout();">+</button>
                            <button type="submit" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button>
                            
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>

        <script>
            function minus1(item_id) {
                var cart_id = document.getElementById("cartId").value;
                var url = "/Cart/items/" + cart_id + "/" + item_id + '/' + 'minus';
                // Make the fetch request
                fetch(url)
                    .then(response => {
                        // Check if the response is successful
                        if (response.ok) {
                            return response.text();
                        } else {
                            throw new Error('Network response was not ok');
                        }
                    })
                    .then(data => {
                        // Replace the content of the lorem-ipsum div with the response text
                        document.getElementById("cartItems").innerHTML = data;
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch request:', error);
                    });
            }

            function add1(item_id) {
                var cart_id = document.getElementById("cartId").value;
                var url = "/Cart/items/" + cart_id + "/" + item_id + '/' + 'add';
                // Make the fetch request
                fetch(url)
                    .then(response => {
                        // Check if the response is successful
                        if (response.ok) {
                            return response.text();
                        } else {
                            throw new Error('Network response was not ok');
                        }
                    })
                    .then(data => {
                        // Replace the content of the lorem-ipsum div with the response text
                        document.getElementById("cartItems").innerHTML = data;
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch request:', error);
                    });
            }

            function deleteItem(item_id){
                var cart_id = document.getElementById("cartId").value;
                var url = "/Cart/items/" + cart_id + "/" + item_id + '/' + 'delete';
                // Make the fetch request
                fetch(url)
                    .then(response => {
                        // Check if the response is successful
                        if (response.ok) {
                            return response.text();
                        } else {
                            throw new Error('Network response was not ok');
                        }
                    })
                    .then(data => {
                        // Replace the content of the lorem-ipsum div with the response text
                        document.getElementById("cartItems").innerHTML = data;
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch request:', error);
                    });
            }

            function updateCheckout(){
                var url = "/Cart/checkoutButton";
                // Make the fetch request
                fetch(url)
                    .then(response => {
                        // Check if the response is successful
                        if (response.ok) {
                            return response.text();
                        } else {
                            throw new Error('Network response was not ok');
                        }
                    })
                    .then(data => {
                        // Replace the content of the lorem-ipsum div with the response text
                        document.getElementById("checkoutButton").innerHTML = data;
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch request:', error);
                    });
            }
        </script>

    </div>



    <!-- Button to show/hide map -->
    <!-- <button id="toggleMapButton" class="btn btn-primary" onclick="toggleMap()">Show Map</button> -->

    <!-- Map container -->
    <div id="cartMap">
        <?php include 'app/views/map.php';
        ?>
    </div>




</body>

</html>