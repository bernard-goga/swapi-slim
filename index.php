<?php
session_start();
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
use voku\db\DB;

require __DIR__ . '/vendor/autoload.php';

if(file_exists(__DIR__ . "/.env")) {
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();
}else{
    echo 'Enviroment not found';
    die();
}
foreach (glob("class/*.php") as $filename){
    include $filename;
}
$db = DB::getInstance($_ENV['DB_HOST'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_NAME'], $_ENV['DB_PORT']);


$app = AppFactory::create();

foreach (glob("routes/*.php") as $filename){
    include $filename;
}
$app->get('/', function (Request $request, Response $response, $args) {
    $response->getBody()->write("Hello world!");
    return $response;
});

$app->run();