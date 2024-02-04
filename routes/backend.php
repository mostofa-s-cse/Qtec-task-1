<?php
use App\Http\Controllers\Admin\CategoriesController;
use App\Http\Controllers\Admin\OrganizationsController;
use App\Http\Controllers\Admin\DashBoardController;
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


Route::get('dashboard', [DashBoardController::class, 'index'])->name('dashboard');

Route::resource('organizations',OrganizationsController::class);
Route::resource('categories',CategoriesController::class);



