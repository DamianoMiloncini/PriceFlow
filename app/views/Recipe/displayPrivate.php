<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Private Recipes</title>
    <style>
        .recipe-list {
            list-style-type: none;
            padding: 0;
        }
        .recipe-item {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
        }
        .recipe-item img {
            max-width: 100px;
            height: auto;
            margin-right: 10px;
        }
        .recipe-item .actions {
            margin-top: 10px;
        }
        .edit-btn,
        .delete-btn {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 3px;
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <h1>Private Recipes</h1>
    <form action="/Recipe/search" method="GET">
        <label for="search">Search Recipes:</label>
        <input type="text" id="search" name="query" placeholder="Enter keywords...">
        <button type="submit">Search</button>
    </form>

    <?php if (!empty($recipes)): ?>
        <div class="recipe-list">
            <?php foreach ($recipes as $recipe): ?>
                <div class="recipe-item">
                    <img src="/uploads/<?php echo basename($recipe['imagePath']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                    <h2><?php echo $recipe['title']; ?></h2>
                    <p><?php echo $recipe['content']; ?></p>
                    <p>Duration: <?php echo $recipe['duration']; ?></p>
                    <p>Date Created: <?php echo $recipe['date_created']; ?></p>
                    <div class="actions">
                        <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>">View Details</a>
                        <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] === $_SESSION['user_id']): ?>
                            <a class="edit-btn" href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>">Edit</a>
                            <a class="delete-btn" href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>">Delete</a>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else: ?>
        <p>No private recipes found.</p>
    <?php endif; ?>
</body>
</html>