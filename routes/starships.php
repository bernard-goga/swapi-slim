<?php
$app->get('/api/starships',function ($request, $response, array $args) {
    $get_starships = json_encode(Starship::all());
    $response->getBody()->write($get_starships);
    return $response->withHeader('Content-type', 'application/json');
});

$app->get('/api/starships/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $get_starship = json_encode(Starship::single($id));
    $response->getBody()->write($get_starship);
    return $response->withHeader('Content-type', 'application/json');
});

$app->get('/api/starships/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $get_starship = json_encode(Starship::get_units($id));
    $response->getBody()->write($get_starship);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/starships/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Starship::put_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/starships/increment/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Starship::increment_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/starships/decrement/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Starship::decrement_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});