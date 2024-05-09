<!DOCTYPE html>
<html>

<head>

    <style>
        #wrapper {
            background-color: #fffbfb;
            color: #333;
            padding: 0.3%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            z-index: 1000;
            /* Ensure the top bar stays on top of other content */
        }

        #wrapper::after {
            content: "";
            height: 0.5px;
            background-color: rgba(0, 0, 0, 0.08);
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
        }

        #logoText {
            color: #191919;
            font-family: 'Nunito Sans', sans-serif;
            font-size: 18px;
            line-height: 1.3;
            font-weight: 700;
            padding-left: 15px;
            padding-top: 8px;
        }

        #textLogo {
            height: auto;
            width: 3%;
        }

        #iconLogo {
            height: auto;
            width: 35px;
            margin-left: 15px;
        }

        .buttons {
            display: inline-block;
            padding: 10px 20px;
            font-size: 15px;
            font-weight: 300;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: auto;
            /* Align buttons to the right */
        }

        #register {
            display: inline-block;
            padding: 5px 20px;
            background-color: #006eff;
            font-size: 15px;
            font-weight: 600;
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 35px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            /* Add transition for smooth hover effect */
        }

        #register:hover {
            background-color: #0059c6;
            /* Change background color on hover */
            cursor: pointer;
        }

        .userBtn {
            display: inline-block;
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 15px;
            font-weight: 600;
            color: #006eff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            margin-right: 8px;
            margin-left: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .userBtn:hover {
            background-color: #d4e7ff;
            cursor: pointer;
        }

        #login {
            display: inline-block;
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 15px;
            font-weight: 600;
            color: #006eff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            margin-right: 8px;
            margin-left: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #login:hover {
            background-color: #d4e7ff;
            cursor: pointer;
        }

        #cartQuickView {
            display: none;
            position: absolute;
            top: 50px;
            right: 10px;
            width: auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        ol {
            list-style-type: none;
            padding: 5px;
            margin: 0;
        }

        li {
            margin-bottom: 10px;
        }

        li::after {
            content: "";
            height: 0.5px;
            background-color: rgba(0, 0, 0, 0.08);
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
        }

        #cartText {
            margin-bottom: 10px;
        }

        #viewFullCartButton {
            display: inline-block;
            width: 100%;
            text-align: center;
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 15px;
            font-weight: 600;
            color: #006eff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 15px;
            margin-bottom: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #cartCheckoutButton {
            width: 100%;
            text-align: center;
            display: inline-block;
            padding: 5px 20px;
            background-color: #006eff;
            font-size: 15px;
            font-weight: 600;
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #cart {
            font-size: 18px;
            display: inline-block;
            padding: 6px 10px;
            background-color: #006eff;
            font-size: 15px;
            color: #fff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            margin-right: 8px;
            margin-left: 5px;
        }

        #cart:hover {
            background-color: #0059c6;
            /* Change background color on hover */
            cursor: pointer;
        }
    </style>

    <title>Home</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="app/views/Styles/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

</head>

<body>

    <div id='wrapper'>
        <div id="logoSection">
            <a href="/home" style="text-decoration: none">
                <!-- <img id="iconLogo" src="app\resources\PriceWave.png"> -->
                <h1 id="logoText">PriceWave</h1>
                <!-- <img id="textLogo" src="app\resources\PriceWaveText.png"> -->
            </a>
        </div>


        <nav class='buttons'>
            <?php
            //if the user is logged in, have a view profile button and a logout button
            if (isset($_SESSION['user_id'])) {
                $user = new \app\models\User();
                //get user's information
                $user = $user->getByID($_SESSION['user_id']);

                //if the user has informations (which means they are logged in), display profile button & logoutbutton
                if ($user) {
                    echo '<a class="userBtn" href="/User/account">View Account</a>';
                    echo '<a class="userBtn" href="/Recipe/create">Recipe</a>';
                    echo '<a class="userBtn" href="/User/bookmark">Bookmarks</a>';
                    echo '<a class="userBtn" href="/User/logout">Log Out</a>';
                    echo '<a id="cart" class="bi bi-cart4" href="/cart"></i></a>';
                }
            } else {
                echo '<a id="login" href="/User/login">Log In</a>';
                echo '<a id="register" href="/User/registration">Sign Up</a>';
            }

            ?>
        </nav>
    </div>

</body>

</html>