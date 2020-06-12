<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {return view('main');})->name('main');

Route::get('/', 'CurrenciesController@AllData');

Route::get('/{name}', 'CurrenciesController@CurrencyByName')->name('currency-one');
