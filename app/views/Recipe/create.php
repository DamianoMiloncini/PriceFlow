<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Recipe</title>
</head>
<body>
    <h1>Create Recipe</h1>
    <form action="/Recipe/create" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label><br>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="content">Content:</label><br>
        <textarea id="content" name="content" rows="4" required></textarea><br><br>
        
        <label for="duration">Duration:</label><br>
        <input type="text" id="duration" name="duration" required><br><br>
        
        <label for="image">Image:</label><br>
        <input type="file" id="image" name="image" required><br><br>
        
        <label for="privacy_status">Privacy:</label><br>
        <select id="privacy_status" name="privacy_status">
            <option value="public">Public</option>
            <option value="private">Private</option>
        </select><br><br>
        
        <button type="submit">Create Recipe</button>
    </form>
</body>
</html>


