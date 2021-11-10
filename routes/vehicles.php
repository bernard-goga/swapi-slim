<?php
$app->get('/api/vehicle',function ($request, $response, array $args) {
    $get_vehicles = json_encode(Vehicle::all());
    $response->getBody()->write($get_vehicles);
    return $response->withHeader('Content-type', 'application/json');
});

$app->get('/api/vehicle/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $get_vehicle = json_encode(Vehicle::single($id));
    $response->getBody()->write($get_vehicle);
    return $response->withHeader('Content-type', 'application/json');
});

$app->get('/api/vehicle/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $get_vehicle = json_encode(Vehicle::get_units($id));
    $response->getBody()->write($get_vehicle);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/vehicle/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Vehicle::put_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/vehicle/increment/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Vehicle::increment_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});

$app->put('/api/vehicle/decrement/units/{id:[0-9]+}',function ($request, $response, array $args) {
    $id = $request->getAttribute('id');
    $params = $request->getQueryParams();
    $units = $params['units'];
    $put_units = json_encode(Vehicle::decrement_units($id, $units));
    $response->getBody()->write($put_units);
    return $response->withHeader('Content-type', 'application/json');
});