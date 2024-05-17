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
            max-width: 900px;
            margin: 40px auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .recipe-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .recipe-header img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .recipe-header h1 {
            font-size: 2.5em;
            margin: 0;
            color: #2575fc;
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
            margin-bottom: 30px;
        }

        .item-card {
            display: flex;
            align-items: center;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-bottom: 20px;
            background-color: #fafafa;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .item-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .item-card img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 5px;
            margin-right: 20px;
        }

        .item-card div {
            flex-grow: 1;
        }

        .item-card h5 {
            margin: 0 0 5px;
            font-size: 1.2em;
            color: #2575fc;
        }

        .item-card h6 {
            margin: 0;
            font-size: 1em;
            color: #777;
        }

        .button-group {
            text-align: center;
            margin-top: 20px;
        }

        .button-group a {
            display: inline-block;
            padding: 12px 24px;
            margin: 5px 10px;
            font-size: 1em;
            color: #fff;
            background-color: #6a11cb;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button-group a:hover {
            background-color: #5a0fb5;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            .item-card {
                flex-direction: column;
                align-items: flex-start;
                text-align: center;
            }

            .item-card img {
                margin-bottom: 15px;
                margin-right: 0;
            }

        }
    </style>
</head>

<body>
    <div id="cartTopBar">
        <?php include 'app/views/topBar.php'; ?>
    </div>
    <div class="container">
        <div class="recipe-header">
            <img id="recipeImage" src="/uploads/<?php echo basename($recipeData['image']); ?>" alt="<?php echo $recipeData['title']; ?>">
            <h1><?php echo $recipeData['title']; ?></h1>
        </div>
        <div class="recipe-content">
            <p><strong><?= __('Content') ?>:</strong> <?php echo $recipeData['content']; ?></p>
            <p><strong><?= __('Duration') ?>:</strong> <?php echo $recipeData['duration']; ?></p>
            <p><strong><?= __('Date Created') ?>:</strong> <?php echo $recipeData['date_created']; ?></p>
            <p><strong><?= __('Total Price') ?>:</strong> <?php echo $recipeData['total_price']; ?></p>
        </div>
        <div class="recipe-items">
            <?php foreach ($data['itemsInRecipe'] as $item) { ?>
                <div class="item-card">
                    <img src="<?php echo $item['image']; ?>" alt="<?php echo $item['name']; ?>">
                    <div>
                        <h5><?php echo $item['name']; ?></h5>
                        <h6><?= __('Brand') ?>: <?php echo $item['brand']; ?></h6>
                        <h6><?= __('Quantity') ?>: <?php echo $item['quantity']; ?></h6>
                        <h6><?= __('Price') ?>: $<?php echo $item['price']; ?></h6>
                        <h6><?= __('Quantity Needed') ?>: <?php echo $item['quantity_needed']; ?></h6>
                    </div>
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
</body>

</html>