<html>

<head>

    <title><?= __('Home') ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="app\views\Styles\homeStyle.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

</head>

<body>
    <?php include 'app/views/topBar.php';
    ?>

    <div id="authenticatedContainer">

        <?php
        //get user's information
        $user = $user->getByID($_SESSION['user_id']);
        ?>
        <div id="loggedInTopLayer">
            <div id="loggedInMiddleHeading">

                <h4 class='loggedInLeading'>
                    <?= __('Welcome') ?>,
                    <span style="color: #006eff;"><?php echo $user->username ?></span>

                </h4>

                <!-- <div class='buttonArea'>
                            </div> -->
            </div>
        </div>


    </div>
    <div class="authenticatedContent">



        <?php //include 'app/views/Item/searchBar.php'; 
        ?>

        <!-- <div class="divider"></div> -->

        <img id="poster2" src="app/resources/flyer3.png">

        <h4 class="itemLabels">Alcohol, Seltzers...</h4>
        <div id="items">
            <?php
            $counter = 0;
            foreach ($data['items'] as $item) {
                if ($counter >= 5) {
                    break; // Stop iterating once four items have been loaded
                }
                if (stripos($item['name'], 'beverage') !== false) {
            ?>
                    <a style="text-decoration:none; color:black;" href="/Item/info/<?php echo $item['item_id']; ?>">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading" style="margin-bottom: 25px;">
                                    <h6 style="font-size:15px; font-weight:400"><?php echo $item['brand']; ?></h6><br>
                                    <h5 style="font-size:18px;"><?= __('') . $item['name'] ?></h5><br> <!-- to try -->
                                    <h6 style="font-size:15px; font-weight:400;"><?php echo $item['quantity']; ?></h6><br>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7><br>
                                <h7><?php echo $item['store'] ?></h7>
                            </div>
                        </div>
                    </a>
            <?php
                    $counter++;
                }
            }
            ?>

        </div>

        <h4 class="itemLabels" style="margin-top: 5%;">Most Recent Recipes</h4>
        <div id="recipes">
        <?php
            $counter = 0;
            foreach ($data['recipes'] as $recipe) {
                if ($counter >= 5) {
                    break; // Stop iterating once four items have been loaded
                }
            ?>
                <a style="text-decoration:none; color:black;" href='Recipe/recipeDetails/<?php echo $recipe['recipe_id'] ?>'>
                    <div class="recipe">
                        <img id="recipeImage" src="/uploads/<?php echo basename($recipe['imagePath']); ?>">
                        <div id="recipeInformation">
                            <div class="recipeHeading">
                                <h5><?= __('Recipe Title: ') . $recipe['title']; ?></h5> <!-- to try if it works -->
                                <h6><?= __('By') . $recipe['username']; ?></h6>
                            </div>
                            <h7><?php echo $recipe['date_created'] ?></h7>
                        </div>
                    </div>
                </a>
            <?php } ?>
        </div>

        <img id="poster1" src="app/resources/flyer2.png">

        

        <h4 class="itemLabels">Protein Shakes</h4>
        <div id="items">
            <?php
            $counter = 0;
            foreach ($data['items'] as $item) {
                if ($counter >= 5) {
                    break; // Stop iterating once four items have been loaded
                }
                if (stripos($item['name'], 'milkshake') !== false) {
            ?>
                    <a style="text-decoration:none; color:black;" href="/Item/info/<?php echo $item['item_id']; ?>">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading" style="margin-bottom: 25px;">
                                    <h6 style="font-size:15px; font-weight:400"><?php echo $item['brand']; ?></h6><br>
                                    <h5 style="font-size:18px;"><?= __('') . $item['name'] ?></h5><br> <!-- to try -->
                                    <h6 style="font-size:15px; font-weight:400;"><?php echo $item['quantity']; ?></h6><br>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7><br>
                                <h7><?php echo $item['store'] ?></h7>
                            </div>
                        </div>
                    </a>
            <?php
                    $counter++;
                }
            }
            ?>

        </div>

        <h4 class="itemLabels">Chips</h4>
        <div id="items">
            <?php
            $counter = 0;
            foreach ($data['items'] as $item) {
                if ($counter >= 5) {
                    break; // Stop iterating once four items have been loaded
                }
                if (stripos($item['name'], 'chips') !== false) {
            ?>
                    <a style="text-decoration:none; color:black;" href="/Item/info/<?php echo $item['item_id']; ?>">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading" style="margin-bottom: 25px;">
                                    <h6 style="font-size:15px; font-weight:400"><?php echo $item['brand']; ?></h6><br>
                                    <h5 style="font-size:18px;"><?php echo $item['name'] ?></h5><br>
                                    <h6 style="font-size:15px; font-weight:400;"><?php echo $item['quantity']; ?></h6><br>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7><br>
                                <h7><?php echo $item['store'] ?></h7>
                            </div>
                        </div>
                    </a>
            <?php
                    $counter++;
                }
            }
            ?>

        </div>


        </div>


    </div>

</body>

</html>