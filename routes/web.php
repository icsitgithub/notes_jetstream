<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Notes\Notes;
use App\Http\Livewire\Events\Events;
use App\Http\Livewire\Contacts\Contacts;
use App\Http\Livewire\Companies\Companies;
use App\Http\Livewire\Notes\FormInputNote;
use App\Http\Livewire\Notes\FormInputEventNote;
use App\Http\Livewire\Notes\FormInputCompanyNote;
use App\Http\Livewire\Notes\FormInputContactNote;

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

    /* Route untuk view page */
    Route::get('/contacts', Contacts::class)->name('contacts');
    Route::get('/companies', Companies::class)->name('companies');
    Route::get('/events', Events::class)->name('events');
    Route::get('/notes', Notes::class)->name('notes');
    
    /* Route untuk proses input pada bagian note*/
    Route::get('/formInputNote', FormInputNote::class)->name('formInputNotes');
    Route::get('/formInputEventNote', FormInputEventNote::class)->name('formInputEventNotes');
    Route::get('/formInputCompanyNote', FormInputCompanyNote::class)->name('formInputCompanyNotes');
    Route::get('/formInputContactNote', FormInputContactNote::class)->name('formInputContactNotes');
});
