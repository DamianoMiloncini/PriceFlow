<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Private Recipes</title>
    <style>
        /* Add your CSS styles here */
        .recipe {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .recipe img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <h1>Private Recipes</h1>
    <?php foreach ($recipes as $recipe): ?>
        <div class="recipe">
        <img src="/uploads/<?php echo basename($recipe['imagePath']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>" style="width: 100px; height: auto;">
            <h2><?php echo $recipe['title']; ?></h2>
            <p><?php echo $recipe['content']; ?></p>
            <p>Duration: <?php echo $recipe['duration']; ?></p>
            Date Created: <?php echo $recipe['date_created']; ?>
        </div>
    <?php endforeach; ?>
</body>
</html>