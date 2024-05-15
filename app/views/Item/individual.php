<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">
</head>

<body class="bg-gray-100">

<?php include('app/views/topBar.php');?>


    <div class="container mx-auto flex h-screen items-center">
        <div class="zone flex-1 flex justify-center py-20 pr-60" id="zoneA">
            <?php if ($item) : ?>
                <img name="image" src="<?php echo $item['image']; ?>" alt="Item Image" class="w-full h-full w-auto h-auto">
            <?php else : ?>
                <p>Item not found.</p>
            <?php endif; ?>
        </div>
        <div class="zone flex-1 flex flex-col items-center justify-center" id="zoneB">
            <?php if ($item) : ?>
                <div name="item" class="item-info text-left">
                    <div name="brand" class="brand text-2xl font-normal"><?php echo $item['brand']; ?></div>
                    <div name="name" class="item-name text-4xl font-bold mt-1"><?php echo $item['name']; ?></div>
                    <div name="quantity" class="item-quantity text-2xl mt-1 font-normal"><?php echo $item['quantity']; ?></div>
                    <div name="price" class="price font-bold text-4xl mt-5">$<?php echo $item['price']; ?></div>
                    <div class="buttons mt-5 flex text-xl">
                        <form name="bookmark" action="/bookmark/add/<?php echo $item['item_id'] ?>" method="post">
                            <button class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit" name="add_item">Bookmark</button>
                        </form>
                        <br>
                        <form action="/cart/add/<?php echo $item['item_id'] ?>" method="post">
                            <button class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded ml-4" type="submit" name="add_item">Add to Cart</button>
                        </form>
                    </div>
                    <div class="text-xl">
                        <?php
                        if ($stores != null) {
                            echo "<details>";
                            echo "<summary>Stores near you</summary><br>";
                            foreach ($stores as $place) {
                                //a safe way of sending data through the URL (a life saver frl frl)
                                $storeParam = urlencode(json_encode($place));
                                //make this clickable and sent data about a specific store to the store details view
                                echo <<<HTML
                                <li><a href = "/storeDetails?store=$storeParam">{$place['displayName']['text']}, {$place['formattedAddress']}  </a></li>
                                <br>
                            HTML;
                            }
                            echo "</details>";
                        } else {
                            echo '<br><br><label name = "error">No stores within 5km from your location</label> <br><br>';
                            echo '<a class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" href="/User/registerLocation">Register a Location here</a><br><br>';
                            //need a filter to check if the user already has a location saved
                            echo '<a class="button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" href="/User/updateLocation">Update your location here</a>';

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