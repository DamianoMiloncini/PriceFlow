<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">


    <style>
        #container {
            margin-top: 5%;
            border-radius: 15px;
            font-family: 'Nunito Sans', sans-serif;
            background-color: #fff;
            margin-left: 20%;
            margin-right: 20%;
            text-align: center;
            padding-top: 2%;
            padding-bottom: 100%;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }

        #itemBoxWrapper {
            padding: 10px;
            margin: 5px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            width: 50%;
        }

        #itemSearch {
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
            width: 95%;
        }

        #items {
            margin: 20px;
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            /* This is for the grid layout so that the recipes load in a 3 column per row layout  */
            gap: 20px;
        }

        .item {
            height: 100%;
            width: 100%;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: left;
            justify-content: center;
            text-align: center;
            flex-direction: column;
            display: flex;
        }

        #itemImage {
            display: block;
            width: 100%;
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

        #searchBtn {
            width: 8%;
            height: 45px;
            display: inline-block;
            background-color: #fff;
            font-size: 12px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border-radius: 35px;
            cursor: pointer;
            letter-spacing: 0px;
            transition: background-color 0.3s ease;
            border: 1px solid rgba(0, 0, 0, 0.08);
            text-align: center;
            line-height: 40px;
        }

        #doneBtn {
            width: 8%;
            height: 45px;
            display: inline-block;
            background-color: #006eff;
            font-size: 12px;
            font-weight: 600;
            color: #fff;
            text-decoration: none;
            border-radius: 35px;
            cursor: pointer;
            letter-spacing: 0px;
            transition: background-color 0.3s ease;
            border: 1px solid rgba(0, 0, 0, 0.08);
            text-align: center;
            line-height: 40px;
            transition: background-color 0.3s ease;
        }

        #doneBtn:hover {
            background-color: #0059c6;
            cursor: pointer;
        }

        .divider {
            margin-top: 1.5%;
            margin-bottom: 1.5%;
            height: 1px;
            background-color: rgba(0, 0, 0, 0.08);
            bottom: 0;
            left: 0;
            width: 100%;
        }
    </style>
</head>

<body>
    <?php include 'app/views/topBar.php'; ?>
    <div id="container">
        <h4><?= __('Add item to recipe') ?></h4><h4 style="color: #006eff"><?php echo $data['recipes']['title'] ?></h4>
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
                            <a><button type="submit" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button></a>
                        </div>
                        <!-- </div> -->
                        <h5 style="margin-left:2%;">
                        </h5>
                    </div>

            <?php }
            } else {
                echo "Your recipe is empty... Try adding some ingredients!";
            } ?>

        </div>

        <div class="divider"></div>

        <textarea id="itemSearch" name="searchBar" placeholder='<?= __('Search') ?>'></textarea>

        <button id="searchBtn" onclick="fetchData()"><?= __('Search') ?></button>
        <a id="doneBtn" href="/home"><?= __('Done') ?></a>



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
                            <br>
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
        var inputText = document.getElementById("itemSearch").value;
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