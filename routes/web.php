<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

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

Route::get('/', function () {
    return view('adminLte.home');
});

Auth::routes();

Route::get('/dashboard', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/logout', 'HomeController@logout');

Route::get('/home', 'MainSite@index');

Route::get('/add-post', 'AddPost@index');
Route::get('/add-mod', 'AddMod@index');
Route::get('/del-post', 'DelPost@index');
Route::get('/del-mod', 'DelMod@index');
Route::get('/edit-post', 'EditPost@index');
Route::get('/posts', 'Posts@index');

Route::post('addpost', 'AddPost@save');
Route::post('delpost', 'DelPost@delete');
Route::post('addmod', 'AddMod@newmod');
Route::post('delmod', 'DelMod@delete');
Route::post('editpost', 'EditPost@edit');

Route::post('viewpost', 'Posts@viewpost');
Route::post('addcomm', 'AddComm@newcomm');


