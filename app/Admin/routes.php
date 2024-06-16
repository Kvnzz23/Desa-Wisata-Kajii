<?php

use App\Admin\Controllers\FarmController;
use App\Admin\Controllers\HomestayController;
use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('atraksis', AtraksiController::class);
    $router->resource('pakets', PaketController::class);
    $router->resource('ikans', IkanController::class);
    $router->resource('homestays', HomestayController::class);
});
