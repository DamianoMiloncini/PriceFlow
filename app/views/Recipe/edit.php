<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=__('Edit Recipe')?></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        h1 {
            text-align: center;
            margin-top: 30px;
        }
        .edit-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .edit-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .edit-form input[type="text"],
        .edit-form textarea,
        .edit-form select {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .edit-form input[type="submit"] {
            width: 100%;
            background-color: blue;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .edit-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        .edit-form textarea {
            height: 120px;
        }
        .edit-form select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg fill="%23333333" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 16px;
            padding-right: 30px;
        }
        .edit-form input[type="file"] {
            margin-top: 10px;
        }
        .edit-form img {
            max-width: 30%;
            display: block;
            margin: 10px auto;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        .edit-form a {
            display: block;
            text-align: center;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        #wrapper {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <h1><?=__('Edit Recipe')?></h1>
    <form action="/Recipe/update/<?php echo $recipe['recipe_id']; ?>" method="post" enctype="multipart/form-data" class="edit-form">
        <label for="title"><?=__('Title')?>:</label>
        <input type="text" id="title" name="title" value="<?php echo htmlspecialchars($recipe['title']); ?>">
        
        <label for="content"><?=__('Content')?>:</label>
        <textarea id="content" name="content"><?php echo htmlspecialchars($recipe['content']); ?></textarea>
        
        <label for="duration"><?=__('Duration')?>:</label>
        <input type="text" id="duration" name="duration" value="<?php echo htmlspecialchars($recipe['duration']); ?>">
        
        <label for="image"><?=__('Choose a different image')?>:</label>
        <input type="file" id="image" name="image">

        <a href="/Recipe/addItemToRecipe/<?php echo $recipe['recipe_id']; ?>"><?=__('Update ingredients')?></a>

        <img src="/uploads/<?php echo basename($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
        <input type="hidden" name="current_image" value="<?php echo $recipe['image']; ?>">

        <label for="privacy_status"><?=__('Privacy')?>:</label>
        <select id="privacy_status" name="privacy_status">
            <option value="public" <?php if ($recipe['privacy_status'] === 'public') echo 'selected'; ?>><?=__('Public')?></option>
            <option value="private" <?php if ($recipe['privacy_status'] === 'private') echo 'selected'; ?>><?=__('Private')?></option>
        </select>

        <input type="submit" value="<?=__('Save Changes')?>">
    </form>
</body>
</html>

