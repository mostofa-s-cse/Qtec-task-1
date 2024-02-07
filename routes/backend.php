<?php
use App\Http\Controllers\Admin\CategoriesController;
use App\Http\Controllers\Admin\OrganizationsController;
use App\Http\Controllers\Admin\DashBoardController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\DropZoneController;
use App\Http\Controllers\FormBuilderController;
use App\Http\Controllers\FormsController;
use App\Http\Controllers\RoleController;
// use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
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





Route::group([
    'middleware' => 'isAdmin'
], function ($router) {
        Route::get('dashboard', [DashBoardController::class, 'index'])->name('dashboard');
        Route::resource('organizations',OrganizationsController::class);
        Route::resource('categories',CategoriesController::class);
        Route::resource('permissions',PermissionController::class);
        Route::resource('roles',RoleController::class);

        // Start Form Builder===============================================================
        // Step 1
        Route::get('form-builder', [FormBuilderController::class, 'index']);
        // Step 2
        Route::view('formbuilder', 'FormBuilder.create');
        // Step 3
        Route::post('save-form-builder', [FormBuilderController::class, 'create']);
        // Step 4
        Route::delete('form-delete/{id}', [FormBuilderController::class, 'destroy']);

        // Step 5
        Route::view('edit-form-builder/{id}', 'FormBuilder.edit');
        Route::get('get-form-builder-edit', [FormBuilderController::class, 'editData']);
        Route::post('update-form-builder', [FormBuilderController::class, 'update']);

        // Step 6
        Route::view('read-form-builder/{id}', 'FormBuilder.read');
        Route::get('get-form-builder', [FormsController::class, 'read']);
        Route::post('save-form-transaction', [FormsController::class, 'create']);


        // Route::resource('roles',RoleController::class);
        Route::resource('users',UserController::class);

        // End Form Builder===============================================================
});
 Route::view('read-form/{name}', 'front-end.read');