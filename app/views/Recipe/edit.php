<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Recipe</title>
    <style>
        img {
            max-width: 25%;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-bottom: 10px;
        }
        .edit-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .edit-form label {
            display: block;
            margin-bottom: 5px;
        }
        .edit-form input[type="text"],
        .edit-form textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        .edit-form input[type="file"] {
            margin-bottom: 10px;
        }
        .edit-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Edit Recipe</h1>
    <form action="/Recipe/update/<?php echo $recipe['recipe_id']; ?>" method="post" enctype="multipart/form-data" class="edit-form">
        <label for="title">Title:</label><br>
        <input type="text" id="title" name="title" value="<?php echo htmlspecialchars($recipe['title']); ?>"><br>
        
        <label for="content">Content:</label><br>
        <textarea id="content" name="content"><?php echo htmlspecialchars($recipe['content']); ?></textarea><br>
        
        <label for="duration">Duration:</label><br>
        <input type="text" id="duration" name="duration" value="<?php echo htmlspecialchars($recipe['duration']); ?>"><br>
        
        <label for="image">Choose a different image:</label><br>
        <input type="file" id="image" name="image"><br>

        <img src="/uploads/<?php echo basename($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
        <input type="hidden" name="current_image" value="<?php echo $recipe['image']; ?>">

        <label for="privacy_status">Privacy:</label><br>
        <select id="privacy_status" name="privacy_status">
            <option value="public" <?php if ($recipe['privacy_status'] === 'public') echo 'selected'; ?>>Public</option>
            <option value="private" <?php if ($recipe['privacy_status'] === 'private') echo 'selected'; ?>>Private</option>
        </select><br><br>

        <input type="submit" value="Save Changes">
    </form>
</body>
</html>