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
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
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

        #logoSection {
            display: flex;
            /* Use flexbox to align items horizontally */
            align-items: center;
            /* Align items vertically */
        }

        #logoText {
            display: flex;
            color: #191919;
            font-family: 'Nunito Sans', sans-serif;
            font-size: 18px;
            line-height: 1.3;
            font-weight: 700;
            padding-left: 15px;
            padding-top: 8px;
            margin: 0;
            margin-bottom: 10px;
        }


        #textLogo {
            display: flex;
            height: auto;
            width: 3%;
        }

        #iconLogo {
            height: auto;
            width: 35px;
            margin-left: 15px;
        }

        .buttons {
            display: flex;
            padding: 10px 20px;
            font-size: 15px;
            font-weight: 300;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: auto;
            align-items: center;
        }

        #register {
            display: flex;
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
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 15px;
            font-weight: 600;
            color: #006eff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .userBtn:hover {
            background-color: #d4e7ff;
        }

        .topbarBtns {
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

        .topbarBtns:hover {
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

        #search {
            resize: none;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            line-height: 30px;
            height: 40px;
            padding-left: 20px;
            width: 550px !important;

        }

        #topbarSearchButton {
            display: inline-block;
            padding: 5px 20px;
            background-color: #fff;
            font-size: 15px;
            font-weight: 600;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            margin-left: 5px;
            color: black;
            cursor: pointer;
            transition: background-color 0.3s ease;
            height: 40px;
            margin-right: 65px;
            line-height: normal;
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

        .language {
            padding: 5px 20px;
            background-color: #fff;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-left: 10px;
        }
    </style>

    <title>Home</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="app/views/Styles/styles.css"> -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

</head>

<body>

    <form>
        <div id='wrapper'>

            <div id="logoSection">
                <a href="/home" style="text-decoration: none">
                    <!-- <img id="iconLogo" src="app\resources\PriceWave.png"> -->
                    <h1 id="logoText">PriceWave</h1>
                    <!-- <img id="textLogo" src="app\resources\PriceWaveText.png"> -->

                </a>

                <!-- Might do this -->
                <a class="language" href="?lang=en">EN</a>
                <a class="language" href="?lang=fr">FR</a>

            </div>



            <nav class='buttons'>

                <?php
                //if the user is logged in, have a view profile button and a logout button
                if (isset($_SESSION['user_id'])) {
                    $user = new \app\models\User();
                    //get user's information
                    $user = $user->getByID($_SESSION['user_id']);

                    //if the user has informations (which means they are logged in), display profile button & logoutbutton
                    if ($user) { ?>
                        <textarea style="resize:none;" id="search" name="searchBar" placeholder="<?= __("Search products, recipes") ?>"></textarea></textarea>
                        <button id="topbarSearchButton" name="searchButton" class="topbarBtns"><?= __("Search") ?></button>
                        <a class="topbarBtns" href="/User/account"><?= __("Account") ?></a>
                        <a class="topbarBtns" href="/Recipe/displayAll"><?= __("Recipe") ?></a>
                        <a class="topbarBtns" href="/User/bookmark"><?= __("Bookmarks") ?></a>
                        <a name="logout" class="topbarBtns" href="/User/logout"><?= __("Signout") ?></a>
                        <a id="cart" class="bi bi-cart4" href="/cart"></i></a>
                    <?php }
                } else { ?>

                    <a id="login" href="/User/login"><?= __("Log In") ?></a>
                    <a id="register" href="/User/registration"><?= __("Sign Up") ?></a>
                <?php }

                ?>
            </nav>


        </div>
    </form>


    <script>
        // Add event listener for Enter key press on search input
        document.getElementById('search').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                var inputText = document.getElementById("search").value;

                window.location.href = '/Item/search/' + inputText;
                e.preventDefault(); // Prevent form submission if needed :)))
            }
        });

        // Add event listener for click on search button
        document.getElementById('topbarSearchButton').addEventListener('click', function() {
            var inputText = document.getElementById("search").value;
            window.location.href = '/Item/search/' + inputText;
            e.preventDefault(); // Prevent form submission if needed :)))
        });
    </script>

</body>

</html>