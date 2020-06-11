<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Currency;

class CurrenciesController extends Controller {

    public function AllData(){
      $xml = simplexml_load_file('https://nationalbank.kz/rss/rates_all.xml?switch=russian');
      //return view('main', ['data'=>Currency::all()]);
       return view('main', ['data'=>$xml]);
    }

}
