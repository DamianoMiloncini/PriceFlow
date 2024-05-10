<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Recipes</title>
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
            margin-bottom: 10px; /* Add margin below h1 */
        }

        .create-recipe-btn {
            background-color: black;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove default link underline */
            position: absolute;
            top: 20px;
            right: 20px; /* Positioning to the right */
        }

        .create-recipe-btn:hover {
            background-color: #218838;
        }

        .search-container {
            text-align: center; /* Center align the search container */
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
        <h1>All Recipes</h1>
        <div class="search-container">
            <form action="/Recipe/search" method="GET">
                <input type="text" id="search" name="query" placeholder="Search Recipes...">
                <button type="submit">Search</button>
            </form>
        </div>
        <a href="/Recipe/create" class="create-recipe-btn">Create Recipe</a>
    </header>

    <div class="filters">
        <div class="sort-filter">
            <form action="/Recipe/filterByPrice" method="GET">
                <label for="sort_order">Sort by Total Price:</label>
                <select name="sort_order" id="sort_order">
                    <option value="asc">Lowest to Highest</option>
                    <option value="desc">Highest to Lowest</option>
                </select>
                <button type="submit">Sort</button>
            </form>
        </div>
        <div class="price-range-filter">
            <form action="/Recipe/filterByPriceRange" method="GET">
                <label for="min_price">Price Range:</label>
                <input type="number" id="min_price" name="min_price" placeholder="Minimum Price">
                <input type="number" id="max_price" name="max_price" placeholder="Maximum Price">
                <button type="submit">Apply</button>
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
                            <p>Date Created: <?php echo $recipe['date_created']; ?> by <?php echo $recipe['username'] ?></p>
                        </div>
                        <div class="actions">
                            <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>">View Details</a>
                            <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] == $_SESSION['user_id']) : ?>
                                <a class="edit-btn" href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>">Edit</a>
                                <a class="delete-btn" href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>">Delete</a>
                            <?php endif; ?>
                        </div>
                    </li>
                <?php endforeach; ?>
            <?php else : ?>
                <p>No recipes found.</p>
            <?php endif; ?>
        </ul>
    </main>
</body>

</html>
