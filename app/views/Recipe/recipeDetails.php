<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= __('Recipe Details') ?></title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            /* background: linear-gradient(to right, #6a11cb 0%, #2575fc 100%); */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            margin-top: 5%;
        }

        #wrapper2 {
            height: auto;
            width: 100%;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: left;
            justify-content: center;
        }

        .recipe-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .recipe-header img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        }

        .recipe-header h1 {
            font-size: 4em;
            font-weight: lighter;
            margin: 0;
        }

        .recipe-header h2 {
            font-size: 1.5em;
            font-weight: 500;
            margin: 0;
        }

        .recipe-content {
            padding: 0 20px;
            margin-bottom: 30px;
        }

        .recipe-content p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 10px;
            color: #555;
        }

        .recipe-content p strong {
            color: #333;
        }

        .recipe-items {
            margin: 20px;
            margin-bottom: 20px;
        }

        .item-card {
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            padding: 2%;
            margin-bottom: 1.5%;
            display: flex;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: space-between;
            border: 1px solid #ddd;
            background-color: #fafafa;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .item-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .item-card img {
            width: 5%;
            height: auto;
            margin-left: 1%;
            margin-right: 2%;
        }


        .button-group {
            text-align: center;
            margin-top: 20px;
        }

        .button-group a {
            display: inline-block;
            padding: 12px 24px;
            margin: 5px 5px;
            margin-bottom: 20px;
            font-size: 15px;
            font-weight: 600;
            color: #fff;
            background-color: #006eff;
            border-radius: 35px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
            cursor: pointer;
        }

        .button-group a:hover {
            background-color: #0059c6;
            transform: translateY(-2px);
        }

        #ingredientsHeader {
            margin-left: 2%;
            font-size: 20px;
        }
    </style>
</head>

<body>
    <div id="cartTopBar">
        <?php include 'app/views/topBar.php'; ?>
    </div>
    <div class="container">
        <div id="wrapper2">
            <div class="recipe-header">
                <img id="recipeImage" src="/uploads/<?php echo basename($recipeData['image']); ?>" alt="<?php echo $recipeData['title']; ?>">
                <h1 id="recipeTitle2"><?php echo $recipeData['title']; ?></h1>
                <h2><?php echo $recipeData['username'] ?></h2>
            </div>
            <div class="recipe-content">
                <p><strong><?= __('Date Created') ?>:</strong> <?php echo $recipeData['date_created']; ?></p>

                <p><strong><?= __('Duration') ?>:</strong> <?php echo $recipeData['duration']; ?> minutes</p>
                <p><strong><?= __('Content') ?>:</strong> <?php echo $recipeData['content']; ?></p>
                <p><strong><?= __('Total Price') ?>:</strong> <?php echo $recipeData['total_price']; ?></p>
            </div>
            <h4 id="ingredientsHeader">Recipe Ingredients</h4>
            <div class="recipe-items">
                <?php foreach ($data['itemsInRecipe'] as $item) { ?>
                    <div class="item-card">
                        <img src="<?php echo $item['image']; ?>" alt="<?php echo $item['name']; ?>">

                        <h5><?php echo $item['name']; ?></h5>
                        <h6><?= __('Brand') ?>: <?php echo $item['brand']; ?></h6>
                        <h6><?= __('Quantity') ?>: <?php echo $item['quantity']; ?></h6>
                        <h6><?= __('Price') ?>: $<?php echo $item['price']; ?></h6>
                        <h6><?= __('Quantity Needed') ?>: <?php echo $item['quantity_needed']; ?></h6>

                    </div>
                <?php } ?>
            </div>
            <div class="button-group">
                <?php if (isset($_SESSION['user_id']) && $recipeData['user_id'] === $_SESSION['user_id']) : ?>
                    <a href="/Recipe/edit/<?php echo $recipeData['recipe_id']; ?>" class="edit-button"><?= __('Edit') ?></a>
                    <a href="/Recipe/deleteConfirmation/<?php echo $recipeData['recipe_id']; ?>" class="delete-button"><?= __('Delete') ?></a>
                <?php endif;

                if (isset($_SESSION['user_id'])) {
                ?>
                    <a href="/Recipe/displayAll" class="back-button"><?= __('Back to Recipes') ?></a>
                <?php } else { ?>
                    <a href="/" class="back-button"><?= __('Back Home') ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
</body>

</html>