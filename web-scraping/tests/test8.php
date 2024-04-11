<?php
# imdb_final.php

require 'vendor/autoload.php';

$client = new \Goutte\Client();

$url = 'https://www.imdb.com/search/name/?birth_monthday=12-10';

while (true)
{
    $crawler = $client->request('GET', $url);

    $crawler
        ->filter('a.ipc-title-link-wrapper')
        ->each(function ($node) use ($client) {
            $name = $node->text();

            $birthday = $client
            ->click($node->link())
            ->evaluate('//div[@data-testid="birth-and-death-birthdate"]')->first()
            ->text();

            // $year = (new DateTimeImmutable($birthday))->format('Y');

            echo "{$name} was born in {$birthday}\n";
        });

    // Try to find the "Next" link
    $next = $crawler->filter('a.next-page');

    // Stop, if there is no more "Next" link
    if ($next->count() == 0) break;

    $url = $next->link()->getUri();
}