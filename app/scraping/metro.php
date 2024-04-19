<?php

// namespace app\scraping;
require 'vendor/autoload.php';

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;


function scrapeMetroItems()
{
    $browser = new HttpBrowser(HttpClient::create());

$crawler = $browser->request('GET', 'https://www.metro.ca/en/online-grocery/search?filter=ketchup', [
    'headers' => [
        'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',
    ],
]);



// Create a DomCrawler instance
$crawler = new Crawler($crawler->html());

// Find all div elements with the specified class
$products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

$items = [];
echo"anything";
// print_r($products);
// Loop through each filtered product
$products->each($items[]=function (Crawler $product, $i) {
    global $items;
    // Fetch attributes for each product
    $id = $product->attr("data-product-code");
    $name = $product->filter('div.head__title')->text();
    $quantity = $product->filter('span.head__unit-details')->text();
    $brand = $product->filter('span.head__brand')->text();
    $price = $product->filter('span.price-update')->text();
    $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src');
    $link = $product->filter('a.product-details-link')->attr('href');
    $link = 'https://www.metro.ca' . $link;

    // var_dump([$id, $name, $quantity, $brand, $price, $image, $link]);

    // // Create a new Item object and assign values
    $new_item = new \app\models\Item();
    $new_item->item_id = $id;
    $new_item->name = $name;
    $new_item->quantity = $quantity;
    $new_item->brand = $brand;
    $new_item->price = $price;
    $new_item->image = $image;
    $new_item->store = 'Metro';
    $new_item->search_queries = 'milk'; 

    $items[] = $new_item;


    // Print or process the fetched attributes
    echo "ID: $id\n";
    echo "Name: $name\n";
    echo "Quantity: $quantity\n";
    echo "Brand: $brand\n";
    echo "Price: $price\n";
    echo "Image: $image\n";
    echo "Link: $link\n";
    echo "-----------------------------\n";
    return $new_item;
});
print_r($items);

return $items;
}

