<?php

use App\Http\Controllers\AtraksiController;
use App\Http\Controllers\FarmController;
use App\Http\Controllers\HomestayController;
use App\Http\Controllers\IkanController;
use App\Http\Controllers\PaketController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [AtraksiController::class, 'index']);
Route::get('/katalog-paket', [PaketController::class, 'index']);
Route::get('/katalog-ikan', [IkanController::class, 'index']);
Route::get('/homestay', [HomestayController::class, 'index']);
