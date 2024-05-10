<?php

require '../vendor/autoload.php';

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;

$browser = new HttpBrowser(HttpClient::create());

$crawler = $browser->request('GET', 'https://www.superc.ca/en/search?filter=bread', [
    'headers' => [
        'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
    ],
]);

// Create a DomCrawler instance
$crawler = new Crawler($crawler->html());

// Find all div elements with the specified class
$products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

// Loop through each filtered product
$products->each(function (Crawler $product, $i) {
    // Fetch attributes for each product
    $id = $product->attr("data-product-code"); 
    $name = $product->filter('div.head__title')->text();
    $quantity = $product->filter('span.head__unit-details')->text();
    $brand = $product->filter('span.head__brand')->text();
    $price = $product->filter('span.price-update')->text();
    $image = $product->filter('img[data-default="/images/shared/large/default--400x400.jpg"]')->attr('src');
    $link = $product->filter('a.product-details-link')->attr('href');
    $link = 'https://www.superc.ca' . $link;

    // Print or process the fetched attributes
    echo "ID: $id\n";
    echo "Name: $name\n";
    echo "Quantity: $quantity\n";
    echo "Brand: $brand\n";
    echo "Price: $price\n";
    echo "Image: $image\n";
    echo "Link: $link\n";
    echo "-----------------------------\n";
});
