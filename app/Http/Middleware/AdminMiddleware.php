<?php

namespace App\Http\Middleware;

use Auth;
use JWTAuth;
use Closure;
use function Termwind\renderUsing;

class AdminMiddleware
{

    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
   public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $role = auth()->user()->role_id;
            if ($role != "2" && $role != "3") {
                // return response()->json([
                //     'success'=>false,
                //     'message'=>'Unauthorized',
                // ], 401);
                return redirect('/')->with('error', 'Unauthorized');
            }
            return $next($request);
        } else {
            return response()->json([
                'success'=>false,
                'message'=>'Unauthorized',
            ], 401);
        }
    }
}