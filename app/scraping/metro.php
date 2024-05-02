<?php
require 'vendor/autoload.php';

use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\DomCrawler\Crawler;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Symfony\Contracts\HttpClient\ResponseInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;

function scrapeMetroItems($query)
{
    // Create an HttpClient instance
    $client = HttpClient::create();

    // Define the URL
    $address = 'https://www.metro.ca/en/online-grocery/search?filter=' . $query;

    try {
        // Send a GET request
        $response = $client->request('GET', $address, [
            'headers' => [
                'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
                'Referer' => 'https://www.metro.ca/',
            ],
        ]);

        // Get the status code directly from the response
        $statusCode = $response->getStatusCode();
        echo "Response Status Code: " . $statusCode . "\n";

        // Check if the request was successful (status code 200)
        if ($statusCode === 200) {
            $content = $response->getContent();

            // Parse the HTML content
            $crawler = new Crawler($content);
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

            print_r($items);
            return $items;
        } else {
            echo "Error: Request failed with status code " . $statusCode . "\n";
            return [];
        }
    } catch (TransportExceptionInterface $e) {
        echo "Error: " . $e->getMessage() . "\n";
        return [];
    }
}

scrapeMetroItems("eggs");
