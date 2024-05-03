<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="app\views\Recipe\recipeStyles\itemBox.css"> -->
    <title>Create Recipe</title>
    
        
        
    </style>
</head>
<body>
    <div id="wrapper">
        <form action="Recipe/itemToRecipe" method="post" enctype="multipart/form-data">
            <textarea id="search" name="searchBar" placeholder='Search'></textarea></textarea>
            <a id="searchButton" href="/localhost/Item/search/">Search</a>    
        </form>
            <div class="divider"></div>
            <div id="items">
                <?php foreach ($data['items'] as $item) : ?>
                    <script>                        
                        num++;
                    </script>
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading">
                                    <h5><?php echo $item['name']; ?></h5>
                                    <h6>By <?php echo $item['brand']; ?></h6>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                                <button type="submit" id="addButton">Add</button>
                            </div>
                        </div>
                <?php endforeach ?>
            </div>
    </div>
</body>
</html>

<details>
            <summary>Add item</summary>
            <div id="itemBoxWrapper">
            <form action="Recipe/itemToRecipe" method="post" enctype="multipart/form-data">
            <textarea id="search" name="searchBar" placeholder='Search'></textarea></textarea>
            <a id="searchButton" href="/localhost/Item/search/">Search</a>    
        </form>
            <div class="divider"></div>
            <div id="items">
                <?php foreach ($data['items'] as $item) : ?>
                    <script>                        
                        num++;
                    </script>
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading">
                                    <h5><?php echo $item['name']; ?></h5>
                                    <h6>By <?php echo $item['brand']; ?></h6>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                                <button type="button" id="addButton" onclick="addItemToRecipe(<?php echo $item['item_id']; ?>);">Add</button>
                            </div>
                        </div>
                <?php endforeach ?>
            </div>
                </div>
        </details>