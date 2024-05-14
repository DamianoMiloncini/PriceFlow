<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">


    <style>
        #wrapper {
            font-family: 'Nunito Sans', sans-serif;
            background-color: whitesmoke;
            margin-left: 20%;
            margin-right: 20%;
            text-align: center;
            padding-top: 2%;
            padding-bottom: 100%;
        }

        #itemBoxWrapper {
            padding: 10px;
            margin: 5px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            width: 50%;
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
            width: 75%;
        }

        #items {
            margin: 20px;
            margin: 20px;
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            /* This is for the grid layout so that the recipes load in a 3 column per row layout  */
            gap: 20px;
        }

        .item {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        #itemImage {
            width: 100%;
            height: 100px;
            object-fit: cover;
            opacity: 0.9;
            /* -webkit-mask-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 1)), to(rgba(0, 0, 0, 0)));
            mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0)); */
        }


        #itemInformation {
            padding: 20px;
        }

        #itemHeading {
            font-family: "acumin-pro-wide", "Acumin Pro Wide", "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-top: 20px;
            padding-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }

        #addButton {
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

        #addButton:hover {
            background-color: #d4e7ff;
            cursor: pointer;
        }

        #addingHeading {
            font-family: "acumin-pro-wide", "Acumin Pro Wide", "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-top: 20px;
            padding-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }

        #itemsInRecipeList {
            padding-top: 3%;
            padding-bottom: 3%;
            padding-left: 10%;
            padding-right: 10%;
        }

        .itemCard {
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            padding: 2%;
            margin-bottom: 1.5%;
            display: flex;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: space-between;
        }


        .itemImages {
            width: 5%;
            height: auto;
            margin-left: 1%;
            margin-right: 2%;
        }

        .bttns {
            display: inline-block;
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 20px;
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

        .bttns:hover {
            background-color: #d4e7ff;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <?= __('Add item to recipe') ?> <?php echo $data['recipes']['title'] ?>
        <div class="divider"></div>
        <?= __('Items in recipe') ?>

        <!-- I am displaying the items that the user is adding to the recipe -->
        <div id="itemsInRecipeList">


            <?php
            if (!empty($data['itemsInRecipe'])) {

                foreach ($data['itemsInRecipe'] as $item) { ?>

                    <div class="itemCard">

                        <img class="itemImages" src=<?php echo $item['image'] ?>>


                        <!-- <div id ="itemInformation"> -->
                        <h5><?php echo $item['name'] ?></h5>
                        <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
                        <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
                        <h6 style="margin-left:2%;"><?= __('Price') ?>: $<?php echo $item['price'] ?></h6>
                        <h6 id="quantity_purchased" style="margin-left:2%;"><?= __('Quantity needed') ?>: <?php echo $item['quantity_needed'] ?></h6>
                        <input id="itemId" type="hidden" name="item_id" value="<?php echo $item['item_id']; ?>">
                        <input id="recipeId" type="hidden" name="cart_id" value="<?php echo $item['recipe_id']; ?>">
                        <div id="cartButtons">
                            <button type="submit" id="minusBtn" name="minus1" class="bttns" onClick="minus1('<?php echo $item['item_id']; ?>');">-</button>
                            <button type="submit" id="addBtn" name="add1" class="bttns" onClick="add1('<?php echo $item['item_id']; ?>');">+</button>
                            <button type="submit" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button>
                        </div>
                        <!-- </div> -->
                        <h5 style="margin-left:2%;">
                        </h5>
                    </div>

            <?php }
            } else {
                echo "<h4><?=__('Empty')?></h4>";
            } ?>

        </div>

        <textarea id="search" name="searchBar" placeholder='<?= __('Search') ?>'></textarea>
        <button onclick="fetchData()"><?= __('Search') ?></button>
        <a href="/home"><?= __('Done') ?></a>

        <div id="items">
            <?php foreach ($data['items'] as $item) : ?>
                <form action='' method="POST">
                    <div class="item">
                        <img id="itemImage" src="<?php echo $item['image']; ?>">
                        <div id="itemInformation">
                            <div class="itemHeading">
                                <h5><?php echo $item['name']; ?></h5>
                                <h6><?= __('By') ?> <?php echo $item['brand']; ?></h6>
                            </div>
                            <h7>$<?php echo $item['price'] ?></h7>
                            <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?>">
                            <button type="submit" id="addButton"><?= __('Add') ?></button>
                        </div>
                    </div>
                </form>
            <?php endforeach ?>
        </div>

    </div>

</body>

<script>
    function fetchData() {
        var inputText = document.getElementById("search").value;
        if (inputText == '') return;
        var url = "/Recipe/items/" + inputText;
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
                document.getElementById("items").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function addItemToRecipe() {
        var inputText = document.getElementById("search").value;
        if (inputText == '') return;
        var url = "/Recipe/insertTest/" + inputText;
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
                document.getElementById("items").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function minus1(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'minus';
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
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function add1(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'add';
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
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function deleteItem(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'delete';
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
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }
</script>

</html>