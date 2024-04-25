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
                <a href="<?php echo $item->link; ?>"> <!-- Wrap the item in an anchor tag with the link attribute -->
                    <strong>Name:</strong> <?php echo $item->name; ?><br>
                    <strong>Price:</strong> <?php echo $item->price; ?><br>
                    <strong>Brand:</strong> <?php echo $item->brand; ?><br>
                    <strong>Quantity:</strong> <?php echo $item->quantity; ?><br>
                    <strong>Store:</strong> <?php echo $item->store; ?><br>
                    <strong>Image:</strong> <img src="<?php echo $item->image; ?>" alt="<?php echo $item->name; ?>"><br>
                </a>
           </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
