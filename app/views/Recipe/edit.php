<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Recipe</title>
    <style>
        img {
            max-width: 25%;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-bottom: 10px;
        }
        .edit-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .edit-form label {
            display: block;
            margin-bottom: 5px;
        }
        .edit-form input[type="text"],
        .edit-form textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        .edit-form input[type="file"] {
            margin-bottom: 10px;
        }
        .edit-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        #items {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .item {
            width: 30%;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            text-align: center;
        }
        .item img {
            width: 100%;
            border-radius: 5px;
        }
        .item h4 {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Edit Recipe</h1>
    <form action="/Recipe/update/<?php echo $recipe['recipe_id']; ?>" method="post" enctype="multipart/form-data" class="edit-form">
        <label for="title">Title:</label><br>
        <input type="text" id="title" name="title" value="<?php echo htmlspecialchars($recipe['title']); ?>"><br>
        
        <label for="content">Content:</label><br>
        <textarea id="content" name="content"><?php echo htmlspecialchars($recipe['content']); ?></textarea><br>
        
        <label for="duration">Duration:</label><br>
        <input type="text" id="duration" name="duration" value="<?php echo htmlspecialchars($recipe['duration']); ?>"><br>
        
        <label for="image">Choose a different image:</label><br>
        <input type="file" id="image" name="image"><br>

        <img src="/uploads/<?php echo basename($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
        <input type="hidden" name="current_image" value="<?php echo $recipe['image']; ?>">

        <label for="privacy_status">Privacy:</label><br>
        <select id="privacy_status" name="privacy_status">
            <option value="public" <?php if ($recipe['privacy_status'] === 'public') echo 'selected'; ?>>Public</option>
            <option value="private" <?php if ($recipe['privacy_status'] === 'private') echo 'selected'; ?>>Private</option>
        </select><br><br>

        <input type="submit" value="Save Changes">
    </form>

    <div id="wrapper">
    <?php if (isset($data['recipes']) && is_array($data['recipes'])) : ?>
        <?php foreach ($data['recipes'] as $recipe) : ?>
            <h5 id="addingHeading">Edit items to recipe <?php echo $recipe['title']; ?></h5>
        <?php endforeach; ?>
    <?php else : ?>
        <h5 id="addingHeading">Edit items to recipe</h5>
    <?php endif; ?>

    <div class="divider"></div>
    <h5>Items in recipe</h5>

    <div id="itemsInRecipeList">
        <?php if (isset($data['itemsInRecipe']) && is_array($data['itemsInRecipe'])) {
            foreach ($data['itemsInRecipe'] as $item) { ?>
                <div class="itemCard">
                    <img class="itemImages" src="<?php echo $item['image']; ?>">
                    <h5><?php echo $item['name']; ?></h5>
                    <h6 style="margin-left:2%;"><?php echo $item['brand']; ?></h6>
                    <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity']; ?></h6>
                    <h6 style="margin-left:2%;">Price: $<?php echo $item['price']; ?></h6>
                    <h6 id="quantity_purchased" style="margin-left:2%;">Quantity needed: <?php echo $item['quantity_needed']; ?></h6>
                    <input id="itemId" type="hidden" name="item_id" value="<?php echo $item['item_id']; ?>">
                    <input id="recipeId" type="hidden" name="cart_id" value="<?php echo $item['recipe_id']; ?>">
                    <div id="cartButtons">
                        <button type="button" id="minusBtn" name="minus1" class="bttns" onClick="minus1('<?php echo $item['item_id']; ?>');">-</button>
                        <button type="button" id="addBtn" name="add1" class="bttns" onClick="add1('<?php echo $item['item_id']; ?>');">+</button>
                        <button type="button" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button>
                    </div>
                </div>
        <?php }
        } else {
            echo "<h4>Empty</h4>";
        } ?>
    </div>

    <a href="/Recipe/displayAll">Done</a>

    <form id="addItemForm" method="POST">
        <div id="items">
            <?php if (isset($data['items']) && is_array($data['items'])) {
                foreach ($data['items'] as $item) : ?>
                    <form action="/Recipe/addItemToRecipe/<?php echo $item['item_id']; ?>" method="POST">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading">
                                    <h5><?php echo $item['name']; ?></h5>
                                    <h6>By <?php echo $item['brand']; ?></h6>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                                <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?>">
                                <input type="hidden" name="recipe_id" value="<?php echo $recipe['recipe_id'] ?>">
                            </div>
                        </div>
                    </form>
            <?php endforeach;
            } ?>
        </div>
    </form>
</div>

    <script>
    function fetchData() {
        var inputText = document.getElementById("search").value;
        if (inputText == '') return;
        var url = "/Recipe/items/" + inputText;
        fetch(url)
            .then(response => {
                if (response.ok) {
                    return response.text();
                } else {
                    throw new Error('Network response was not ok');
                }
            })
            .then(data => {
                document.getElementById("items").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function minus1(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'minus';
        fetch(url)
            .then(response => {
                if (response.ok) {
                    return response.text();
                } else {
                    throw new Error('Network response was not ok');
                }
            })
            .then(data => {
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function add1(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'add';
        fetch(url)
            .then(response => {
                if (response.ok) {
                    return response.text();
                } else {
                    throw new Error('Network response was not ok');
                }
            })
            .then(data => {
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }

    function deleteItem(item_id) {
        var recipe_id = document.getElementById("recipeId").value;
        var url = "/Recipe/itemsInRecipe/" + recipe_id + "/" + item_id + '/' + 'delete';
        fetch(url)
            .then(response => {
                if (response.ok) {
                    return response.text();
                } else {
                    throw new Error('Network response was not ok');
                }
            })
            .then(data => {
                document.getElementById("itemsInRecipeList").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }
</script>
</body>
</html>