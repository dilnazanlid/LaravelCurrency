<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Currency;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class CurrenciesController extends Controller {

    public function AllData(){

        //$data = DB::table('currencies');
        $data = new Currency;
        if(is_null($data->all())) return response()->json(["message"=>"Record not found!"], 404);
        return response()->json($data->all(), 200);
    }

    public function CurrencyByName($id){
      $data = DB::table('currencies')->where('name', $id)->first();
      if(is_null($data)) return response()->json(["message"=>"Record not found!"], 404);
      return response()->json($data, 200);
    }


}
