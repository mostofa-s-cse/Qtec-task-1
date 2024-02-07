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
            if ($role != "2"||"3") {
                return redirect()->route('frontend.index');
            }
            return $next($request);
        } else {
            return redirect()->route('frontend.index');
        }
    }
}