<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\FormBuilderController;
use App\Http\Controllers\FormsController;
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


//Route::get('/', function () {
//    return view('back-end.dashboard');
//});

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();
// Route::get('/', function () {
//     return view('front-end.pages.home.index');
// });

Route::get('/', [HomeController::class, 'frontendHome'])->name('frontend.index');
Route::get('/individual-categories/{id}', [HomeController::class, 'individualCategories'])->name('individualCategories');
// Route::view('read-individual-categories/{id}', 'front-end.category');
// Step 6

Route::view('read-form/{name}', 'front-end.read');
Route::get('get-form', [HomeController::class, 'read']);
Route::post('save-form-transaction-user', [HomeController::class, 'create']);