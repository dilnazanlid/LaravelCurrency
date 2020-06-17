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
        $rightToken = '2LNOTdiu0iS7Uj1NZjfB1Eg4WkwnxT4hduElGt6LsjKLBfPTMcrDyVTexvDK';
        //$request->headers->set('Authorization', $token);
         $token = $request->header('Authorization');
         if(is_null($request->header('Authorization'))){
           return response()->json(['message'=>'The token is not found!'], 401);
         }else if($token!=$rightToken){
           return response()->json(['message'=>'The token is not correct!'], 403);
         }
        return $next($request);
    }
}
