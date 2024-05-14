<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=__('Your Recipes')?></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            margin: 0;
        }

        .home-btn,
        .create-recipe-btn {
            background-color: #007bff;
            color: #ffffff;
            padding: 8px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        .home-btn:hover,
        .create-recipe-btn:hover {
            background-color: #0056b3;
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        form label {
            margin-right: 10px;
        }

        form input[type="text"] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            margin-right: 10px;
        }

        form button[type="submit"] {
            padding: 8px 15px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        form button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .recipe-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .recipe-item {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            display: flex;
            align-items: center;
        }

        .recipe-item img {
            max-width: 100px;
            height: auto;
            margin-right: 20px;
        }

        .recipe-info {
            flex: 1;
        }

        .recipe-info h2 {
            margin: 0;
            font-size: 20px;
        }

        .actions {
            margin-top: 10px;
            text-align: right;
        }

        .actions a {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 3px;
            margin-right: 5px;
        }

        .actions a.edit-btn {
            background-color: #ffc107;
        }

        .actions a.delete-btn {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    <header>
        <div>
            <h1><?=__('Your Recipes')?></h1>
            <a href="/home" class="home-btn"><?=__('Home')?></a>
        </div>
        <div>
            <form action="/Recipe/search" method="GET">
                <label for="search"><?=__('Search Recipes:')?> </label>
                <input type="text" id="search" name="query" placeholder="<?=__('Enter keywords...')?>">
                <button type="submit"><?=__('Search')?></button>
            </form>
            <a href="/Recipe/create" class="create-recipe-btn"><?=__('Create Recipe')?></a>
        </div>
    </header>

    <?php if (!empty($recipes)): ?>
        <ul class="recipe-list">
            <?php foreach ($recipes as $recipe): ?>
                <li class="recipe-item">
                    <img src="/uploads/<?php echo isset($recipe['imagePath']) ? basename($recipe['imagePath']) : 'placeholder_image.jpg'; ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                    <div class="recipe-info">
                        <h2><?php echo $recipe['title']; ?></h2>
                        <p><?php echo $recipe['content']; ?></p>
                        <p><?=__('Duration:')?> <?php echo $recipe['duration']; ?></p>
                        <p><?=__('Date Created:')?> <?php echo $recipe['date_created']; ?></p>
                        <div class="actions">
                            <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>"><?=__('View Details')?></a>
                            <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] == $_SESSION['user_id']): ?>
                                <a class="edit-btn" href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>"><?=__('Edit')?></a>
                                <a class="delete-btn" href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>"><?=__('Delete')?></a>
                            <?php endif; ?>
                        </div>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        <p><?=__('No private recipes found.')?></p>
    <?php endif; ?>
</body>
</html>