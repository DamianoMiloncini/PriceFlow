<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Recipes</title>
</head>
<body>
    <h1>Your Recipes</h1>
    <ul>
        <?php foreach ($recipes as $recipe): ?>
            <li><?php echo $recipe['title']; ?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
