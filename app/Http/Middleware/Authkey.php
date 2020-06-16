<?php

namespace App\Http\Middleware;

use Closure;

class Authkey
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //$token = '2LNOTdiu0iS7Uj1NZjfB1Eg4WkwnxT4hduElGt6LsjKLBfPTMcrDyVTexvDK';
        //$request->headers->set('Authorization', $token);
         $token = $request->header('APP_KEY');
         if(is_null($request->header('APP_KEY'))){
           return response()->json(['message'=>'The token is not found!'], 401);
         }else if($token!='2LNOTdiu0iS7Uj1NZjfB1Eg4WkwnxT4hduElGt6LsjKLBfPTMcrDyVTexvDK'){
           return response()->json(['message'=>'The token is not correct!'], 403);
         }
        return $next($request);
    }
}
