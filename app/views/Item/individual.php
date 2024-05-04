<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">
    <div class="container mx-auto flex h-screen items-center">
        <div class="zone flex-1 flex justify-center" id="zoneA">
            <?php if ($item) : ?>
                <img src="<?php echo $item['image']; ?>" alt="Item Image" class="max-w-full max-h-full w-auto h-auto">
            <?php else : ?>
                <p>Item not found.</p>
            <?php endif; ?>
        </div>
        <div class="zone flex-1 flex flex-col items-center justify-center" id="zoneB">
            <?php if ($item) : ?>
                <div class="item-info text-left">
                    <div class="brand text-lg"><?php echo $item['brand']; ?></div>
                    <div class="item-name text-2xl font-bold mt-2"><?php echo $item['name']; ?></div>
                    <div class="item-quantity text-lg mt-2">Quantity: <?php echo $item['quantity']; ?></div>
                    <div class="price text-lg mt-4">Price: <?php echo $item['price']; ?></div>
                    <div class="buttons mt-4">
                        <form action="/bookmark/add/<?php echo $item['item_id']?>" method="post">
                            <button class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit" name="add_item">Bookmark</button>
                        </form>
                        <br>
                        <form action="/cart/add/<?php echo $item['item_id']?>" method="post">
                            <button class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded ml-4" type="submit" name="add_item">Add to Cart</button>
                        </form>

                        <?php
                        if ($stores != null) {
                            echo "<details>";
                            echo "<summary>Stores near you</summary><br>"; 
                            foreach($stores as $place) {
                            //a safe of sending data through the URL (a life saver frl frl)
                            $storeParam = urlencode(json_encode($place));
                            //make this clickable and sent data about a specific store to the store details view
                            echo <<<HTML
                                <li><a href = "/storeDetails?store=$storeParam">{$place['displayName']['text']}, {$place['formattedAddress']}  </a></li>
                                <br>
                            HTML;
                         }   
                            echo "</details>";
                        }
                        else {
                            echo 'No stores within 5km from your location';
                        }
                         ?>
                    </div>
                </div>
            <?php else : ?>
                <p>Item not found.</p>
            <?php endif; ?>
        </div>
    </div>
</body>

</html>
