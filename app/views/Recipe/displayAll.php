<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Recipes</title>
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
    <h1>All Recipes</h1>
    <ul class="recipe-list">
        <?php foreach ($data as $recipe): ?>
            <li class="recipe-item">
                <img src="/uploads/<?php echo basename($recipe['imagePath']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                <strong><?php echo $recipe['title']; ?></strong>
                <p>Date Created: <?php echo $recipe['date_created']; ?> by <?php echo $recipe['username'] ?></p>
                <div class="actions">
                    <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>">View Details</a>
                    <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] === $_SESSION['user_id']): ?>
                        <a class="edit-btn" href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>">Edit</a>
                        <a class="delete-btn" href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>">Delete</a>
                    <?php endif; ?>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>