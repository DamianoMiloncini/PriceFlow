<?php
# goutte_xpath.php

require '../vendor/autoload.php';

$client = new Symfony\Component\BrowserKit\HttpBrowser();

$crawler = $client->request('GET', 'https://www.imdb.com/search/name/?birth_monthday=12-10');

$links = $crawler->evaluate('//h3[@class="ipc-title__text"]');

foreach ($links as $link) {
    echo $link->textContent.PHP_EOL;
}