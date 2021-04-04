<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\AdminsController;

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
Route::get('/',[PagesController::class, 'index']);

Route::resource('/blog', PostsController::class);

Route::get('/admin', [AdminsController::class, 'index'])->middleware('admin');
Route::get('delete/{id}', [AdminsController::class, 'delete'])->middleware('admin');
Route::get('approve/{id}', [AdminsController::class, 'approve'])->middleware('admin');
Route::get('reject/{id}', [AdminsController::class, 'reject'])->middleware('admin');

Auth::routes();


