<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {return view('main');})->name('main');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
