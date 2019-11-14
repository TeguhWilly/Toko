<?php

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

Route::get('/', 'Utama@index');
Route::post('/pushData', 'Utama@store');
Route::get('/login', 'Login@index');
Route::post('/register', 'Login@register');
Route::post('/userlogin', 'Login@userlogin');
Route::get('/userlogout', 'Login@userlogout');
Route::post('/AddCart', 'Order@order');
Route::get('/keranjang', 'Order@keranjang');
Route::get('/Checkout', 'Order@checkout');
Route::get('/Checkout_list', 'Order@Checkout_List');
