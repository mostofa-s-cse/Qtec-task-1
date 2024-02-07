<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashBoardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $user = Auth::user();
        // $roles = DB::table('roles')
        //     ->where('id', $user->id)
        //     ->first();
        if ($user->role_id === '1') {
           return redirect()->route('frontend.index');
        } elseif ($user->role_id === '2' || $user->role_id === '3') {
            return view('back-end.dashboard');
        } else {
            // Handle other roles or unauthorized access
            abort(403, 'Unauthorized');
        }
    }
}
