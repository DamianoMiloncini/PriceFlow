<?php

require 'vendor/autoload.php';

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;

function getRandomUserAgent()
{
    // Read the contents of the JSON file
    $userAgentsJson = file_get_contents('user-agents_true.json');
    
    // Parse JSON data to an array
    $userAgentsArray = json_decode($userAgentsJson, true);
    
    // Randomly select a user agent
    $randomIndex = array_rand($userAgentsArray);
    return $userAgentsArray[$randomIndex];
}

function scrapeMetroItems($query)
{
    $browser = new HttpBrowser(HttpClient::create());
    $address = 'https://www.metro.ca/en/online-grocery/search?filter=' . $query;
    
    // Get a random user agent
    $randomUserAgent = getRandomUserAgent();

    echo $randomUserAgent;
    
    $crawler = $browser->request('GET', $address, [
        'headers' => [
            'User-Agent' => $randomUserAgent, 
            'Referer'=>'https://www.metro.ca/',
        ],
    ]);

    $crawler = new Crawler($crawler->html());
    $products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

    $items = [];
    $products->each(function (Crawler $product) use (&$items) {
        $item_id = $product->attr("data-product-code");
        $name = $product->filter('div.head__title')->text();
        $quantity = $product->filter('span.head__unit-details')->text();
        $brand = $product->filter('span.head__brand')->text();
        $price = $product->filter('span.price-update')->text();
        $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src');
        $link = $product->filter('a.product-details-link')->attr('href');
        $link = 'https://www.metro.ca' . $link;

        $item = [
            'item_id' => 'metro' . $item_id,
            'name' => $name,
            'quantity' => $quantity,
            'brand' => $brand,
            'price' => $price,
            'image' => $image,
            'link' => $link,
            'store' => "metro"
        ];

        $items[] = $item;
    });

    return $items;
}

// scrapeMetroItems("eggs");


// require 'vendor/autoload.php';

// use Symfony\Component\BrowserKit\HttpBrowser;
// use Symfony\Component\HttpClient\HttpClient;
// use Symfony\Component\DomCrawler\Crawler;

// function scrapeMetroItems($query)
// {
//         $browser = new HttpBrowser(HttpClient::create());
//         $address = 'https://www.metro.ca/en/online-grocery/search?filter=' . $query;
//         // print_r($address);
//         $crawler = $browser->request('GET', $address, [
//             'headers' => [
//                 'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 
//                 'Referer'=>'https://www.metro.ca/',
//             ],
//         ]);

//         $crawler = new Crawler($crawler->html());
//         $products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

//         $items = [];
//         $products->each(function (Crawler $product) use (&$items) {
//             $item_id = $product->attr("data-product-code");
//             $name = $product->filter('div.head__title')->text();
//             $quantity = $product->filter('span.head__unit-details')->text();
//             $brand = $product->filter('span.head__brand')->text();
//             $price = $product->filter('span.price-update')->text();
//             $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src');
//             $link = $product->filter('a.product-details-link')->attr('href');
//             $link = 'https://www.metro.ca' . $link;

//             $item = [
//                 'item_id' => 'metro' . $item_id,
//                 'name' => $name,
//                 'quantity' => $quantity,
//                 'brand' => $brand,
//                 'price' => $price,
//                 'image' => $image,
//                 'link' => $link,
//                 'store' => "metro"
//             ];

//             $items[] = $item;
//         });

//     // print_r($items);
//     return $items;
// }

// // scrapeMetroItems("eggs");

// ?>
