<?php
/**
 * Application entrypoint script
 */
 
require __DIR__ . '/../../vendor/autoload.php';
 
use Symfony\Component\Console\Application;
use App\Command\ScraperCommand;
 
$application = new Application();
 
$application->add(new ScraperCommand());
 
$application->run();