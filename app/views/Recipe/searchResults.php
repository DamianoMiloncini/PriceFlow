<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=__('Search Results')?></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }

        header {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            text-align: center;
            position: relative;
            margin-bottom: 20px;
        }

        header h1 {
            margin: 0;
            margin-bottom: 10px;
        }

        .create-recipe-btn {
            background-color: black;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; 
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .create-recipe-btn:hover {
            background-color: #218838;
        }

        .search-container {
            text-align: center; 
            margin-bottom: 20px;
        }

        .search-container input[type="text"] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            margin-right: 10px;
        }

        .search-container button[type="submit"] {
            padding: 8px 15px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-container button[type="submit"]:hover {
            background-color: #0056b3;
        }

        main {
            padding: 20px;
        }

        .recipe-list {
            list-style-type: none;
            padding: 0;
        }

        .recipe-item {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            display: flex;
            align-items: center;
        }

        .image-wrapper {
            flex: 0 0 120px;
            margin-right: 20px;
        }

        .image-wrapper img {
            width: 100%;
            height: auto;
            border-radius: 5px;
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
        <h1><?=__('Search Results')?></h1>
        <div class="search-container">
            <form action="/Recipe/search" method="GET">
                <input type="text" id="search" name="query" placeholder="<?=__('Search Recipes...')?>">
                <button type="submit"><?=__('Search')?></button>
            </form>
        </div>
        <a href="/Recipe/create" class="create-recipe-btn"><?=__('Create Recipe')?></a>
    </header>

    <main>
        <ul class="recipe-list">
            <?php foreach ($recipes as $recipe): ?>
            <li class="recipe-item">
                <div class="image-wrapper">
                    <img src="/uploads/<?=basename($recipe['image'])?>" alt="<?=htmlspecialchars($recipe['title'])?>">
                </div>
                <div class="recipe-info">
                    <h2><?=$recipe['title']?></h2>
                </div>
                <div class="actions">
                <a href="/Recipe/recipeDetails/<?=$recipe['recipe_id']?>"><?=__('View Details')?></a>
                <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] == $_SESSION['user_id']) : ?>
                    <a class="edit-btn" href="/Recipe/edit/<?=$recipe['recipe_id']?>"><?=__('Edit')?></a>
                    <a class="delete-btn" href="/Recipe/deleteConfirmation/<?=$recipe['recipe_id']?>"><?=__('Delete')?></a>
                <?php endif; ?>
                </div>
            </li>
            <?php endforeach; ?>
        </ul>
    </main>
</body>

</html>
