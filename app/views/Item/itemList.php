<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
</head>
<body>
    <h1>Item List</h1>
    <ul>
        <?php foreach ($items as $item): ?>
            <li>
                <strong>Name:</strong> <?php echo $item->name; ?><br>
                <strong>Price:</strong> <?php echo $item->price; ?><br>
                <strong>Image:</strong> <img src="<?php echo $item->image; ?>" alt="<?php echo $item->name; ?>"><br>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
