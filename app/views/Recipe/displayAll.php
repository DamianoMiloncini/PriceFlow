<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Recipes</title>
</head>
<body>
    <h1>All Recipes</h1>
    <ul>
        <?php foreach ($recipes as $recipe): ?>
            <li>
                <img src="/uploads/<?php echo basename($recipe['imagePath']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>" style="width: 100px; height: auto;">
                <a href="/Recipe/recipeDetails/<?php echo $recipe['recipe_id']; ?>">
                    <?php echo $recipe['title']; ?>
                </a>
                - <?php echo $recipe['date_created']; ?> by <?php echo $recipe['username']; ?>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>

