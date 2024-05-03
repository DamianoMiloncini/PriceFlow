<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <!-- Include Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">
    <h1 class="text-2xl font-bold text-center my-8">Item List</h1>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4 mx-60">
        <?php foreach ($items as $item) : ?>
            <div class="bg-white rounded-lg shadow-md p-4">
                <a href="/Item/info/<?php echo $item->item_id; ?>"> <!-- Wrap the item in an anchor tag with the link attribute -->
                    <img src="<?php echo $item->image; ?>" alt="<?php echo $item->name; ?>" class="w-full mb-2">
                    <p class="mb-2 font-"><?php echo strtoupper($item->brand); ?></p> <!-- Capitalize the brand -->
                    <p class="font-bold mb-2"><?php echo $item->name; ?></p>
                    <p class="mb-2"><?php echo $item->price; ?></p>
                    <p class="mb-2"><?php echo $item->quantity; ?></p>
                    <p class="mb-2"><?php echo $item->store; ?></p>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>