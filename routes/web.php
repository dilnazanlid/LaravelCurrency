<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('main');
});

Route::get('/', 'CurrenciesController@AllData')->name('currency-data');
