<?php

namespace App\Http\Controllers;
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
        if ($user->types === '3') {
           return redirect()->route('frontend.index');
        } elseif ($user->types === '1' || $user->types === '2') {
            return view('back-end.dashboard');
        } else {
            // Handle other roles or unauthorized access
            abort(403, 'Unauthorized');
        }
    }
}
