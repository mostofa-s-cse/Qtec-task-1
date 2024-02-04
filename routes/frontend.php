<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SliderController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\ProjectController;
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
Route::get('about-us', [HomeController::class, 'about_us'])->name('abouts');
Route::get('services', [HomeController::class, 'services'])->name('services');
Route::get('projects', [HomeController::class, 'projects'])->name('projects');
Route::get('contact-us', [HomeController::class, 'contact_us'])->name('contact');
Route::post('contact-store', [ContactController::class, 'store'])->name('contact_store');
Route::get('single_project/{id}', [ProjectController::class, 'single_project'])->name('single_project');
