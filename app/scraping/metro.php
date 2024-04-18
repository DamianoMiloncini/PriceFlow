<?php

require '../vendor/autoload.php';

use Symfony\Component\BrowserKit\HttpBrowser;
use Symfony\Component\HttpClient\HttpClient;

$browser = new HttpBrowser(HttpClient::create());

$crawler = $browser->request('GET', 'https://www.metro.ca/en/online-grocery/search?filter=milk', [
    'headers' => [
        'User-Agent' => 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
    ],
]);

//--------------------------------------------

$names = $crawler->evaluate('//div[contains(@class, "head__title")]');
$quantities = $crawler->evaluate('//span[contains(@class, "head__unit-details")]');
$brands = $crawler->evaluate('//span[contains(@class, "head__brand")]');
$prices = $crawler->evaluate('//span[contains(@class, "price-update")]');
$images = $crawler->evaluate('//img[contains(@data-default, "/images/shared/placeholders/icon-no-picture.svg")]/@src'); // Select images with the specified data attribute
$links = $crawler->evaluate('//a[contains(@class, "product-details-link")]/@href'); // Select links with the specified class

$quantityArray = [];
foreach ($quantities as $key => $quantity) {
    $quantityArray[] = $quantity->textContent;
}

$brandArray = [];
foreach ($brands as $key => $brand) {
    $brandArray[] = trim($brand->textContent);
}

$priceArray = [];
foreach ($prices as $key => $price) {
    $priceArray[] = trim($price->textContent);
}

$imageArray = [];
foreach ($images as $key => $image) {
    $imageArray[] = $image->textContent;
}

$linkArray = [];
foreach ($links as $key => $link) {
    $linkArray[] = $link->textContent;
}

// we extract the titles, brands, quantities, and prices and display them together
// Print the items with labels
foreach ($names as $key => $name) {
    echo "Brand: " . $brandArray[$key] . "\n";
    echo "Name: " . $name->textContent . "\n";
    echo "Quantity: " . $quantityArray[$key] . "\n";
    echo "Price: " . $priceArray[$key] . "\n";
    echo "Image URL: " . $imageArray[$key] . "\n";
    echo "Link: " . $linkArray[$key] . "\n\n";
}
?>
