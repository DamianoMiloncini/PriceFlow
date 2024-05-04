<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe Details</title>
    <style>
        img {
            max-width: 25%;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-bottom: 10px;
        }

        .recipe-details {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .edit-button,
        .delete-button,
        .back-button {
            display: block;
            width: 100px;
            margin: 10px auto;
            padding: 8px 16px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        #recipeItems {
            padding-top: 3%;
            padding-left: 18%;
            padding-right: 18%;
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
    <img src="/uploads/<?php echo basename($recipeData['image']); ?>" alt="<?php echo $recipeData['title']; ?>">
    <div class="recipe-details">
        <h1><?php echo $recipeData['title']; ?></h1>
        <p>Content: <?php echo $recipeData['content']; ?></p>
        <p>Duration: <?php echo $recipeData['duration']; ?></p>
        <p>Date Created: <?php echo $recipeData['date_created']; ?></p>

        <div id="recipeItems">
            <?php foreach ($data['itemsInRecipe'] as $item) { ?>

                <div class="itemCard">

                    <img class="itemImages" src=<?php echo $item['image'] ?>>


                    <!-- <div id ="itemInformation"> -->
                    <h5><?php echo $item['name'] ?></h5>
                    <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
                    <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
                    <h6 style="margin-left:2%;">Price: $<?php echo $item['price'] ?></h6>
                    <h6 id="quantity_purchased" style="margin-left:2%;">Quantity needed: <?php echo $item['quantity_needed'] ?></h6>
                    <!-- </div> -->
                    <h5 style="margin-left:2%;">
                    </h5>
                </div>

            <?php } ?>
        </div>


        <?php if (isset($_SESSION['user_id']) && $recipeData['user_id'] === $_SESSION['user_id']) : ?>
            <a href="/Recipe/edit/<?php echo $recipeData['recipe_id']; ?>" class="edit-button">Edit</a>
            <a href="/Recipe/deleteConfirmation/<?php echo $recipeData['recipe_id']; ?>" class="delete-button">Delete</a>
        <?php endif; ?>
        <a href="/Recipe/displayAll" class="back-button">Back to Recipes</a>
    </div>
</body>

</html>