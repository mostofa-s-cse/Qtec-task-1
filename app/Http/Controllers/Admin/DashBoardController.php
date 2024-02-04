<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashBoardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
        {
            $user = Auth::user();

            if ($user->role === '0') {
                return view('front-end.index');
            } elseif ($user->role === '1' || $user->role === '2') {
                return view('back-end.dashboard');
            } else {
                // Handle other roles or unauthorized access
                abort(403, 'Unauthorized');
            }
        }
}
