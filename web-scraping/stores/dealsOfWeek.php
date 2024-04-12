<?php
# goutte_xpath.phpx

require '../vendor/autoload.php';

$client = new Symfony\Component\BrowserKit\HttpBrowser();

$crawler = $client->request('GET', 'https://www.metro.ca/en');

$titles = $crawler->evaluate('//div[@class="head__title"]');


//This title is for Walmart
// $titles = $crawler->evaluate('//span[@data-automation-id="product-title"]');

foreach ($titles as $title) {
    echo $title->textContent.PHP_EOL;
}