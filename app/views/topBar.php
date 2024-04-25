<html>
    <head>

        <title>Home</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="app/views/Styles/styles.css"> 
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

        <script>
            function toggleCart() {
            var cartQuickView = document.getElementById("cartQuickView");
            if (cartQuickView.style.display === "none") {
            cartQuickView.style.display = "block";
        } else {
            cartQuickView.style.display = "none";
        }
}
        </script>

    </head>

    <body>

        <div id = 'wrapper'>
            
            <h1>PriceWave</h1>

            <nav class = 'buttons'>
                <?php
                //if the user is logged in, have a view profile button and a logout button
                if(isset($_SESSION['user_id'])) {
                    $user = new \app\models\User();
                    //get user's information
                    $user = $user->getByID($_SESSION['user_id']);

                    //if the user has informations (which means they are logged in), display profile button & logoutbutton
                    if($user) {
                        echo '<a class="userBtn" href="User/account">View Account</a>';
                        echo '<a class="userBtn" href="User/logout">Log Out</a>';
                        echo '<a class="userBtn" href="User/bookmark">Bookmarks</a>';
                        echo '<a id="cart" class="bi bi-cart4" onclick="toggleCart()"></i></a>';
                    }
                }else {
                    echo '<a id="login" href="User/login">Log In</a>'; 
                    echo '<a id="register" href="User/registration">Sign Up</a>';
                }
                 
                ?>


                
            </nav>

            
            


        </div>

        <div id='cartQuickView'>
            <label id = 'cartText'>[User's] cart</label>

            <div id="cartItems">
                <ol>
                    <li>Item 1</li>
                    <li>Item 2</li>
                    <li>Item 3</li>
                    <li>Item 4</li>
                </ol>
            </div>

            <div class='cartButtons'>
                <a id="viewFullCartButton" href="cart">View Full Cart</a>
                <br>
                <a id="cartCheckoutButton" href="">Checkout</a>
            </div>
            
        </div>

    </body>
</html>