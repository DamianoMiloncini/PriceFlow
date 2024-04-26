<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    <ul class="recipe-list">
        <?php foreach ($recipes as $recipe): ?>
            <li class="recipe-item">
                <img src="/uploads/<?php echo basename($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                <strong><?php echo $recipe['title']; ?></strong>
                <p><?php echo $recipe['content']; ?></p>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
