<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=__('All Recipes')?></title>
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
            text-align: center;
            position: relative;
        }

        header h1 {
            margin: 0;
            margin-bottom: 10px;
        }

        .create-recipe-btn, 
        .your-recipe-history-btn, 
        .home-btn {
            background-color: black;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            position: absolute;
            top: 20px;
        }

        .create-recipe-btn {
            right: 20px;
        }

        .your-recipe-history-btn {
            left: 20px;
        }

        .home-btn {
            left: 200px;
        }

        .create-recipe-btn:hover, 
        .your-recipe-history-btn:hover, 
        .home-btn:hover {
            background-color: #218838;
        }

        .search-container {
            text-align: center;
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

        .filters {
            background-color: #f8f9fa;
            padding: 20px;
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .filters .sort-filter,
        .filters .price-range-filter {
            display: flex;
            align-items: center;
        }

        .filters .price-range-filter {
            margin-left: 20px;
        }

        .filters form {
            display: flex;
            align-items: center;
        }

        .filters label {
            margin-right: 10px;
        }

        .filters input[type="number"],
        .filters select {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            margin-right: 10px;
        }

        .filters button[type="submit"] {
            padding: 8px 15px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
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
    <?php include 'app/views/topBar.php'; ?>
    <header>
        <h1><?=__('All Recipes')?></h1>
        <a href="/Recipe/displayUserRecipes" class="your-recipe-history-btn"><?=__('Your Recipe History')?></a>
        <a href="/home" class="home-btn"><?=__('Home')?></a>
        <div class="search-container">
            <form action="/Recipe/search" method="GET">
                <input type="text" id="search" name="query" placeholder="<?=__('Search Recipes...')?>">
                <button type="submit"><?=__('Search')?></button>
            </form>
        </div>
        <a href="/Recipe/create" class="create-recipe-btn"><?=__('Create Recipe')?></a>
    </header>

    <div class="filters">
        <div class="sort-filter">
            <form action="/Recipe/filterByPrice" method="GET">
                <label for="sort_order"><?=__('Sort by Total Price:')?></label>
                <select name="sort_order" id="sort_order">
                    <option value="asc"><?=__('Lowest to Highest')?></option>
                    <option value="desc"><?=__('Highest to Lowest')?></option>
                </select>
                <button type="submit"><?=__('Sort')?></button>
            </form>
        </div>
        <div class="price-range-filter">
            <form action="/Recipe/filterByPriceRange" method="GET">
                <label for="min_price"><?=__('Price Range:')?></label>
                <input type="number" id="min_price" name="min_price" placeholder="<?=__('Minimum Price')?>">
                <input type="number" id="max_price" name="max_price" placeholder="<?=__('Maximum Price')?>">
                <button type="submit"><?=__('Apply')?></button>
            </form>
        </div>
    </div>

    <main>
        <ul class="recipe-list">
            <?php if (!empty($data)) : ?>
                <?php foreach ($data as $recipe) : ?>
                    <li class="recipe-item">
                        <div class="image-wrapper">
                            <img src="/uploads/<?php echo basename($recipe['imagePath']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                        </div>
                        <div class="recipe-info">
                            <h2><?php echo $recipe['title']; ?></h2>
                            <p><?=__('Date Created:')?> <?php echo $recipe['date_created']; ?> <?=__('by')?> <?php echo $recipe['username'] ?></p>
                            <p class="price">Price: <?php echo $recipe['total_price']; ?></p>
                        </div>
                        <div class="actions">
                            <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>"><?=__('View Details')?></a>
                            <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] == $_SESSION['user_id']) : ?>
                                <a class="edit-btn" href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>"><?=__('Edit')?></a>
                                <a class="delete-btn" name="delete-btn" href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>"><?=__('Delete')?></a>
                            <?php endif; ?>
                        </div>
                    </li>
                <?php endforeach; ?>
            <?php else : ?>
                <p><?=__('No recipes found.')?></p>
            <?php endif; ?>
        </ul>
    </main>
</body>

</html>
