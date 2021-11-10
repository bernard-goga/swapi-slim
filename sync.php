<?php
use voku\db\DB;
include 'vendor/autoload.php';
if(file_exists(__DIR__ . "/.env")) {
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();
}else{
    echo 'Enviroment not found';
    die();
}
include __DIR__."/class/Starship.class.php";
include __DIR__."/class/Vehicle.class.php";
$db = DB::getInstance($_ENV['DB_HOST'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_NAME'], $_ENV['DB_PORT']);

Starship::sync();
Vehicle::sync();