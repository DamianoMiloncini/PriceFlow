<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <!-- Include Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Additional styles for filter and sort popups */
        .popup {
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
    <?php include 'app/views/Item/searchBar.php'; ?>

    <div class="flex flex-row mt-4 justify-center gap-4">
        <!-- Filter button -->
        <button onclick="togglePopup('filterPopup')" class="w-20 bg-blue-500 text-white px-4 py-2 rounded-md mb-4">Filter</button>
        <!-- Sort button -->
        <button onclick="togglePopup('sortPopup')" class="w-32 bg-blue-500 text-white px-4 py-2 rounded-md mb-4">Sort by Price</button>
    </div>

    <!-- Filter popup -->
    <form id="filterPopup" class="popup">
        <button onclick="togglePopup('filterPopup')" class="absolute top-0 right-0 px-3 py-1 text-xl">&times;</button>
        <label for="minPrice">Min Price:</label>
        <input name="minPrice" type="number" id="minPrice" min="0" value="0" step="0.01">
        <label for="maxPrice">Max Price:</label>
        <input name="maxPrice" type="number" id="maxPrice" min="0" value="1000" step="0.01">
        <label for="storeFilter">Store:</label>
        <select id="storeFilter">
            <option value="">All</option>
            <option value="metro">Metro</option>
            <option value="superc">Super C</option>
        </select>
        <button onclick="applyFilter()" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-4">Apply</button>
    </form>

    <!-- Sort popup -->
    <div id="sortPopup" class="popup">
        <button onclick="togglePopup('sortPopup')" class="absolute top-0 right-0 px-3 py-1 text-xl">&times;</button>
        <button onclick="sortItems('asc')" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-4">Low to High</button>
        <button onclick="sortItems('desc')" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-4">High to Low</button>
    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4 mx-60" id="itemList">
        <?php if (empty($items)) : ?>
            <p>No items found</p>
        <?php else : ?>
            <?php foreach ($items as $item) : ?>
                <div class="bg-white rounded-lg shadow-md p-4">
                    <a name="item" href="/Item/info/<?php echo $item->item_id; ?>"> <!-- Wrap the item in an anchor tag with the link attribute -->
                        <img src="<?php echo $item->image; ?>" alt="<?php echo $item->name; ?>" class="w-full mb-2">
                        <p class="mb-2 font-"><?php echo strtoupper($item->brand); ?></p> <!-- Capitalize the brand -->
                        <p class="font-bold mb-2" name="<?php echo $item->name; ?>"> <?php echo $item->name; ?></p>
                        <p class="mb-2"><?php echo $item->price; ?></p>
                        <p class="mb-2"><?php echo $item->quantity; ?></p>
                        <p class="mb-2"><?php echo $item->store; ?></p>
                    </a>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>

    <script>
        // Function to toggle popup visibility and close other popups
        function togglePopup(popupId) {
            var popup = document.getElementById(popupId);
            var popups = document.querySelectorAll('.popup');
            for (var i = 0; i < popups.length; i++) {
                if (popups[i].id !== popupId) {
                    popups[i].style.display = "none";
                }
            }
            popup.style.display = (popup.style.display === "block") ? "none" : "block";
        }

        // Function to apply price and store filter
        function applyFilter() {
            event.preventDefault();
            var minPrice = parseFloat(document.getElementById("minPrice").value);
            var maxPrice = parseFloat(document.getElementById("maxPrice").value);
            var selectedStore = document.getElementById("storeFilter").value.toLowerCase(); // Get selected store

            // Save filter values in cookies
            document.cookie = "minPrice=" + minPrice;
            document.cookie = "maxPrice=" + maxPrice;
            document.cookie = "selectedStore=" + selectedStore;

            // Filter items based on price and store
            var items = <?php echo json_encode($items); ?>;
            var filteredItems = items.filter(function(item) {
                var itemPrice = parseFloat(item.price);
                var itemStore = item.store.toLowerCase(); // Convert store to lowercase for case-insensitive comparison
                return (itemPrice >= minPrice && itemPrice <= maxPrice && (selectedStore === "" || itemStore === selectedStore));
            });

            // Generate HTML for filtered items
            var itemListHTML = "";
            filteredItems.forEach(function(item) {
                itemListHTML += generateItemHTML(item);
            });

            // Update item list with filtered items
            document.getElementById("itemList").innerHTML = itemListHTML;

            // Retrieve sorting order from cookies and apply it
            var sortingOrder = getCookie("sortingOrder");
            if (sortingOrder === "asc" || sortingOrder === "desc") {
                sortItems(sortingOrder);
            }

            // Hide filter popup
            togglePopup("filterPopup");
        }

        // Function to sort items by price
        function sortItems(order) {
            var minPrice = parseFloat(document.getElementById("minPrice").value);
            var maxPrice = parseFloat(document.getElementById("maxPrice").value);
            var selectedStore = document.getElementById("storeFilter").value.toLowerCase(); // Get selected store

            // Save sorting order in cookies
            document.cookie = "sortingOrder=" + order;

            // Filter items based on price and store before sorting
            var items = <?php echo json_encode($items); ?>;
            var filteredItems = items.filter(function(item) {
                var itemPrice = parseFloat(item.price);
                var itemStore = item.store.toLowerCase(); // Convert store to lowercase for case-insensitive comparison
                return (itemPrice >= minPrice && itemPrice <= maxPrice && (selectedStore === "" || itemStore === selectedStore));
            });

            // Sort filtered items
            if (order === "asc") {
                filteredItems.sort(function(a, b) {
                    return parseFloat(a.price) - parseFloat(b.price);
                });
            } else if (order === "desc") {
                filteredItems.sort(function(a, b) {
                    return parseFloat(b.price) - parseFloat(a.price);
                });
            }

            // Generate HTML for sorted items
            var itemListHTML = "";
            filteredItems.forEach(function(item) {
                itemListHTML += generateItemHTML(item);
            });

            // Update item list with sorted items
            document.getElementById("itemList").innerHTML = itemListHTML;

            // Hide sort popup
            togglePopup("sortPopup");
        }

        // Function to retrieve filter values from cookies
        function getCookie(name) {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].trim();
                var parts = cookie.split('=');
                if (parts[0] === name) {
                    return parts[1];
                }
            }
            return "";
        }

        // Function to generate HTML for each item
        function generateItemHTML(item) {
            return `
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
        }

        // Call retrieveFiltersFromCookies on page load
        window.onload = function() {
            event.preventDefault();
            retrieveFiltersFromCookies();
            applyFilter(); // Apply filters on page load
        };
    </script>
</body>

</html>