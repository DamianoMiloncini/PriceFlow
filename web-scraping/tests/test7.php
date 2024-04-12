<?php
# imdb_birthdates.php

require 'vendor/autoload.php';

$client = new \Goutte\Client();

$client
    ->request('GET', 'https://www.imdb.com/search/name/?birth_monthday=12-10')
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