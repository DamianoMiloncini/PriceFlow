<?php

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;

function scrapeSuperCItems($query)
{
    // Check if the cache file exists and is not older than 1 hour
    $browser = new HttpBrowser(HttpClient::create());
    $crawler = $browser->request('GET', 'https://www.superc.ca/en/search?filter=' . $query, [
        'headers' => [
            'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
        ],
    ]);

    $crawler = new Crawler($crawler->html());
    $products = $crawler->filter('div.default-product-tile.tile-product.item-addToCart');

    if ($products->count() === 0) {
        // Handle the case where no products were found
        return [];
    }

    $items = [];
    $products->each(function (Crawler $product) use (&$items) {
        $item_id = $product->attr("data-product-code");
        $name = $product->filter('div.head__title')->count() > 0 ? $product->filter('div.head__title')->text() : null;
        
        // Skip the item if item_id or name are null
        if ($item_id === null || $name === null) {
            return;
        }
        
        $quantity = $product->filter('span.head__unit-details')->count() > 0 ? $product->filter('span.head__unit-details')->text() : null;
        $brand = $product->filter('span.head__brand')->count() > 0 ? $product->filter('span.head__brand')->text() : null;
        $price = $product->filter('span.price-update')->count() > 0 ? $product->filter('span.price-update')->text() : null;
        $image = $product->filter('img[data-default="/images/shared/large/default--400x400.jpg"]')->count() > 0 ? $product->filter('img[data-default="/images/shared/large/default--400x400.jpg"]')->attr('src') : null;
        $link = $product->filter('a.product-details-link')->count() > 0 ? $product->filter('a.product-details-link')->attr('href') : null;
        $link = 'https://www.superc.ca' . $link;
    
        // Skip the item if any of the attributes are null
        if ($quantity === null || $brand === null || $price === null || $image === null || $link === null) {
            return;
        }
    
        $item = [
            'item_id' => 'superc' . $item_id,
            'name' => $name,
            'quantity' => $quantity,
            'brand' => $brand,
            'price' => $price,
            'image' => $image,
            'link' => $link,
            'store' => "superc"
        ];
    
        $items[] = $item;
    });
    
    

    return $items;
}
