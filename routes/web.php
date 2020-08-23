<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index')->name('home');
Route::group(['prefix' => 'user'], function () {
    Route::post('/update', 'UserController@update')->name('updateUser');
});
Route::group(['prefix' => 'store'], function () {
	Route::get('/getProduct/{id}', 'StoreController@getProductInStore')->name('stores');
    Route::post('/add', 'StoreController@add')->name('addStore');
});