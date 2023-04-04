<?php

use App\Http\Livewire\Notes\Notes;
use App\Http\Livewire\Events\Events;
use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Contacts\Contacts;
use App\Http\Livewire\Companies\Companies;

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

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/contacts', Contacts::class)->name('contacts');
    Route::get('/companies', Companies::class)->name('companies');
    Route::get('/events', Events::class)->name('events');
    Route::get('/notes', Notes::class)->name('notes');
});
