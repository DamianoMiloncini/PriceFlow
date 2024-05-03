<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <!-- Include Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Additional styles for filter popup */
        .filter-popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            z-index: 999;
        }
    </style>
</head>

<body class="bg-gray-100">
    <h1 class="text-2xl font-bold text-center my-8">Item List</h1>

    <!-- Filter button -->
    <button onclick="toggleFilterPopup()" class="bg-blue-500 text-white px-4 py-2 rounded-md mb-4">Filter</button>

    <!-- Filter popup -->
    <div id="filterPopup" class="filter-popup">
        <label for="minPrice">Min Price:</label>
        <input type="number" id="minPrice" min="0" step="0.01">
        <label for="maxPrice">Max Price:</label>
        <input type="number" id="maxPrice" min="0" step="0.01">
        <button onclick="applyFilter()" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-4">Apply</button>
    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4 mx-60" id="itemList">
        <?php

        foreach ($items as $item) : ?>
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

    <script>
        // Function to toggle filter popup visibility
        function toggleFilterPopup() {
            var filterPopup = document.getElementById("filterPopup");
            filterPopup.style.display = (filterPopup.style.display === "none") ? "block" : "none";
        }

        // Function to apply price filter
        function applyFilter() {
            var minPrice = parseFloat(document.getElementById("minPrice").value);
            var maxPrice = parseFloat(document.getElementById("maxPrice").value);

            // Filter items based on price range
            var items = <?php echo json_encode($items); ?>;
            var filteredItems = items.filter(function(item) {
                var itemPrice = parseFloat(item.price);
                return (itemPrice >= minPrice && itemPrice <= maxPrice);
            });

            // Generate HTML for filtered items
            var itemListHTML = "";
            filteredItems.forEach(function(item) {
                itemListHTML += `
                    <div class="bg-white rounded-lg shadow-md p-4">
                        <a href="/Item/info/${item.item_id}">
                            <img src="${item.image}" alt="${item.name}" class="w-full mb-2">
                            <p class="mb-2 font-">${item.brand.toUpperCase()}</p>
                            <p class="font-bold mb-2">${item.name}</p>
                            <p class="mb-2">${item.price}</p>
                            <p class="mb-2">${item.quantity}</p>
                            <p class="mb-2">${item.store}</p>
                        </a>
                    </div>`;
            });

            // Update item list with filtered items
            document.getElementById("itemList").innerHTML = itemListHTML;

            // Hide filter popup
            toggleFilterPopup();
        }
    </script>
</body>

</html>
