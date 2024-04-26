<?php

require '../vendor/autoload.php';

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;

// Retrieve user agents from JSON file
$userAgentsJson = file_get_contents('user_agents.json');
$userAgentsArray = json_decode($userAgentsJson, true);

// Randomly select a user agent
$randomUserAgent = $userAgentsArray[array_rand($userAgentsArray)];

$browser = new HttpBrowser(HttpClient::create());

$crawler = $browser->request('GET', 'https://www.metro.ca/en/online-grocery/search?filter=milk', [
    'headers' => [
        'User-Agent' => $randomUserAgent,
        "Referer" => "https://www.metro.ca/",
    ],
]);

// var_dump($crawler);

// Create a DomCrawler instance
$crawler = new Crawler($crawler->html());

// var_dump($crawler);

// Find all div elements with the specified class
$products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

// Loop through each filtered product
// Verify if any products are found before looping through them
if ($products->count() > 0) {
    echo "Products found.\n";
    var_dump($products);

    // Loop through each filtered product
    $products->each(function (Crawler $product, $i) {
        // Fetch attributes for each product
        $item_id = $product->attr("data-product-code");
        $name = $product->filter('div.head__title')->text();
        $quantity = $product->filter('span.head__unit-details')->text();
        $brand = $product->filter('span.head__brand')->text();
        $price = $product->filter('span.price-update')->text();
        $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src');
        $link = $product->filter('a.product-details-link')->attr('href');
        $link = 'https://www.metro.ca' . $link;

        // Print or process the fetched attributes
        echo "item_id: $item_id\n";
        echo "Name: $name\n";
        echo "Quantity: $quantity\n";
        echo "Brand: $brand\n";
        echo "Price: $price\n";
        echo "Image: $image\n";
        echo "Link: $link\n";
        echo "-----------------------------\n";
    });
} else {
    echo "No products found.\n";
}


// require '../vendor/autoload.php';

// use Symfony\Component\BrowserKit\HttpBrowser;
// use Symfony\Component\HttpClient\HttpClient;
// use Symfony\Component\DomCrawler\Crawler;

// $browser = new HttpBrowser(HttpClient::create());

// $crawler = $browser->request('GET', 'https://www.metro.ca/en/online-grocery/search?filter=milk', [
//     'headers' => [
//         'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
//         "Referer" => "https://www.metro.ca/",
//     ],
// ]);

// // var_dump($crawler);

// // Create a DomCrawler instance
// $crawler = new Crawler($crawler->html());

// // var_dump($crawler);


// // Find all div elements with the specified class
// $products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

// // Loop through each filtered product
// // Verify if any products are found before looping through them
// if ($products->count() > 0) {
//     echo "Products found.\n";
//     var_dump($products);

//     // Loop through each filtered product
//     $products->each(function (Crawler $product, $i) {
//         // Fetch attributes for each product
//         $item_id = $product->attr("data-product-code");
//         $name = $product->filter('div.head__title')->text();
//         $quantity = $product->filter('span.head__unit-details')->text();
//         $brand = $product->filter('span.head__brand')->text();
//         $price = $product->filter('span.price-update')->text();
//         $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src');
//         $link = $product->filter('a.product-details-link')->attr('href');
//         $link = 'https://www.metro.ca' . $link;

//         // Print or process the fetched attributes
//         echo "item_id: $item_id\n";
//         echo "Name: $name\n";
//         echo "Quantity: $quantity\n";
//         echo "Brand: $brand\n";
//         echo "Price: $price\n";
//         echo "Image: $image\n";
//         echo "Link: $link\n";
//         echo "-----------------------------\n";
//     });
// } else {
//     echo "No products found.\n";
// }
