<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .zone {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .zone img {
            max-width: 100%;
            max-height: 100%;
            width: auto; /* Adjust image size to grow */
            height: auto; /* Adjust image size to grow */
        }
        .item-info {
            font-size: 35px;
            margin-top: 20px;
            text-align: left; /* Align item info as a column */
        }
        .brand {
            font-size: 20px;
        }
        .item-name {
            font-size: 40px;
            font-weight: bold;
            margin-top: 5px;
        }
        .item-quantity {
            font-size: 20px;
            margin-top: 5px;
        }
        .price {
            font-size: 30px;
            margin-top: 20px;
        }
        .buttons {
            margin-top: 20px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="zone" id="zoneA">
            <?php if ($item): ?>
                <img src="<?php echo $item['image']; ?>" alt="Item Image">
            <?php else: ?>
                <p>Item not found.</p>
            <?php endif; ?>
        </div>
        <div class="zone" id="zoneB">
            <?php if ($item): ?>
                <div class="item-info">
                    <div class="brand"><?php echo $item['brand']; ?></div>
                    <div class="item-name"><?php echo $item['name']; ?></div>
                    <div class="item-quantity">Quantity: <?php echo $item['quantity']; ?></div>
                    <div class="price">Price: <?php echo $item['price']; ?></div>
                    <div class="buttons">
                        <button class="button">Bookmark</button>
                        <button class="button">Add to Cart</button>
                    </div>
                </div>
            <?php else: ?>
                <p>Item not found.</p>
            <?php endif; ?>
        </div>
    </div>
</body>
</html>
