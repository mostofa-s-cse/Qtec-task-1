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
        $roles = DB::table('roles')
            ->where('id', $user->id)
            ->first();
        if ($roles->id === 0) {
            return view('front-end.index');
        } elseif ($roles->id === 1 || $roles->id === 2) {
            return view('back-end.dashboard');
        } else {
            // Handle other roles or unauthorized access
            abort(403, 'Unauthorized');
        }
    }
}
