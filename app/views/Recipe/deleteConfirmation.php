<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .confirmation-message {
            margin-bottom: 20px;
        }
        .confirm-btn,
        .cancel-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Delete Confirmation</h1>
    <p class="confirmation-message">Are you sure you want to delete the recipe "<?php echo htmlspecialchars($recipe['title']); ?>"?</p>
    <form action="/Recipe/delete/<?php echo $recipe['recipe_id']; ?>" method="post">
        <input class="confirm-btn" type="submit" name="confirm" value="Yes">
    </form>
    <form action="/Recipe/displayAll" method="get">
        <input class="cancel-btn" type="submit" name="cancel" value="Cancel">
    </form>
</body>
</html>