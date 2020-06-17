<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Currency;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class CurrenciesController extends Controller {

  /**
   * Get all data from the table 'currencies' in the database 'currencies_test'.
   *
   * @param  App\Models\Currency
   * @return JSON object with the data or error message with response codes
   */

    public function AllData(){
        $data = new Currency;
        if(is_null($data->all())) return response()->json(["message"=>"Record not found!"], 404);
        return response()->json($data->all(), 200);
    }

    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request
     * @param  $id which stores the title of the currency
     * @return JSON object with the data or error message with response codes
     */

    public function CurrencyByName($id){
      $data = DB::table('currencies')->where('name', $id)->first();
      if(is_null($data)) return response()->json(["message"=>"Record not found!"], 404);
      return response()->json($data, 200);
    }


}
