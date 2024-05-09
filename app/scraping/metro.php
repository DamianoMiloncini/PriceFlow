<?php

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;

function scrapeMetroItems($query)
{
    $browser = new HttpBrowser(HttpClient::create());
    $address = 'https://www.metro.ca/en/online-grocery/search?filter=' . $query;
    $crawler = $browser->request('GET', $address, [
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
        $item_id = $product->attr("data-product-code") ?? null;
        $name = $product->filter('div.head__title')->count() > 0 ? $product->filter('div.head__title')->text() : null;
        $quantity = $product->filter('span.head__unit-details')->count() > 0 ? $product->filter('span.head__unit-details')->text() : null;
        $brand = $product->filter('span.head__brand')->count() > 0 ? $product->filter('span.head__brand')->text() : null;
        $price = $product->filter('span.price-update')->count() > 0 ? $product->filter('span.price-update')->text() : null;
        $image = $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->count() > 0 ? $product->filter('img[data-default="/images/shared/placeholders/icon-no-picture.svg"]')->attr('src') : null;
        $link = $product->filter('a.product-details-link')->count() > 0 ? $product->filter('a.product-details-link')->attr('href') : null;
        $link = 'https://www.metro.ca' . $link;

        // Check if any attribute is null, if so, skip this item
        if (is_null($item_id) || is_null($name) || is_null($quantity) || is_null($brand) || is_null($price) || is_null($image) || is_null($link)) {
            return; // Skip this item
        }

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



    print_r($items);
    return $items;
}
