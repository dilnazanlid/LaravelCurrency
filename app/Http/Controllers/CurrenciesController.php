<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Currency;

class CurrenciesController extends Controller {

    public function AllData(){
      $data = DB::table('currencies')->orderBy('name')->paginate(10);
      return view('main', ['data'=>$data]);
    }

    public function CurrencyByName($id){
      $data = DB::table('currencies')->where('name', $id)->first();
      return view('currency', ['data' => $data]);
    }


}
