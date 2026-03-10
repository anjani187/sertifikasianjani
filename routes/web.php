<?php

use App\Http\Controllers\editor\AuthController;
use App\Http\Controllers\editor\DaftarController;
use App\Http\Controllers\editor\UserController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;


// LOGIN
Route::controller(AuthController::class)->group(function(){
    Route::get('/login', 'index')->name('login');
    Route::post('/login/auth', 'authenticate')->name('login.auth');
    Route::post('/logout', 'logout')->name('logout');
});


Route::middleware(['auth','PreventBackHistory'])->group(function () {

    // HALAMAN UTAMA (langsung ke daftar tugas)
    Route::get('/', [DaftarController::class, 'CVindex'])->name('editor.home');


    // MANAJEMEN USER
    Route::controller(UserController::class)->group(function()
    {
        Route::get('/users','index')->name('editor.users');
        Route::get('/users/data','getData')->name('editor.users.data');
        Route::post('/users/store','storeData')->name('editor.users.store');
        Route::get('/users/detail','detail')->name('editor.users.detail');
        Route::post('/users/update','updateData')->name('editor.users.update');
        Route::post('/users/updatepassword','updatePassword')->name('editor.users.updatepassword');
        Route::delete('/users/delete','deleteData')->name('editor.users.delete');
    });


    // DAFTAR TUGAS
    Route::controller(DaftarController::class)->group(function()
    {
        Route::get('/corevalue','CVindex')->name('editor.corevalue');
        Route::get('/corevalue/data','getCV')->name('editor.corevalue.data');
        Route::post('/corevalue/store','storeCV')->name('editor.corevalue.store');
        Route::get('/corevalue/detail','detailCV')->name('editor.corevalue.detail');
        Route::post('/corevalue/update','updateCV')->name('editor.corevalue.update');
        Route::delete('/corevalue/delete','deleteCV')->name('editor.corevalue.delete');
    });


    Route::get('/tes', function() {
        Artisan::call('storage:link');
    });

});