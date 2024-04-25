<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe Details</title>
    <style>
        img {
            max-width: 25%;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-bottom: 10px;
        }
        .recipe-details {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .edit-button,
        .delete-button,
        .back-button {
            display: block;
            width: 100px;
            margin: 10px auto;
            padding: 8px 16px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <img src="/uploads/<?php echo basename($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
    <div class="recipe-details">
        <h1><?php echo htmlspecialchars($recipe['title']); ?></h1>
        <p>Content: <?php echo htmlspecialchars($recipe['content']); ?></p>
        <p>Duration: <?php echo htmlspecialchars($recipe['duration']); ?></p>
        <p>Date Created: <?php echo htmlspecialchars($recipe['date_created']); ?></p>
        <?php if (isset($_SESSION['user_id']) && $recipe['user_id'] === $_SESSION['user_id']): ?>
            <a href="/Recipe/edit/<?php echo $recipe['recipe_id']; ?>" class="edit-button">Edit</a>
            <a href="/Recipe/deleteConfirmation/<?php echo $recipe['recipe_id']; ?>" class="delete-button">Delete</a>
        <?php endif; ?>
        <a href="/Recipe/displayAll" class="back-button">Back to Recipes</a>
    </div>
</body>
</html>