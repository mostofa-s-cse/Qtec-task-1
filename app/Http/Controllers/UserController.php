<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request){

        try {
            if ($request->ajax()) {
                    $data = DB::table('users')
                    ->join('roles', 'users.role_id', '=', 'roles.id')
                    ->select('users.*', 'roles.name as roles_name')
                    ->orderBy('users.id', 'DESC')
                    ->get();

                return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('name', function ($data) {
                        return $data->name;
                    })
                    ->addColumn('email', function ($data) {
                        return $data->email;
                    })
                    ->addColumn('roles_name', function ($data) {
                        return $data->roles_name;
                    })
                    ->addColumn('types', function ($data) {
                        return $data->roles_name;
                    })
                    ->addColumn('action', function ($data) {
                        return '<div class="" role="group">
                                    <a id=""
                                        href="' . route('users.edit', $data->id) . '" class="btn btn-sm btn-success" style="cursor:pointer"
                                        title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <a class="btn btn-sm btn-danger" style="cursor:pointer"
                                       href="' . route('users.destroy', [$data->id]) . '"
                                       onclick="showDeleteConfirm(' . $data->id . ')" title="Delete">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </div>';
                    })
                    ->rawColumns(['name','email','roles_name','types','action'])
                    ->make(true);
            }
            return view('back-end.pages.admin.index');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }

    public function create(){
        try {
            $roles = DB::table('roles')->get();
            return view('back-end.pages.admin.create', compact('roles'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    public function store(Request $request){
        // dd($request);
        $request->validate([
            'email' => 'required',
            'name' => 'required',
            'password' => 'required|confirmed|min:6',
            'role_id'=>'required'

        ], []);
        try {
            DB::table('users')->insert([
                'name' => $request->name,
                'email' => $request->email,
                'types'=>$request->role_id,
                'password' => Hash::make($request->password),
                'role_id'=>$request->role_id,
                'created_at' => Carbon::now(),
            ]);
            return redirect()->route('users.index')
                ->with('success', 'Successfully Submited');
        } catch (\Exception $exception) {

            return redirect()->back()->with('error', $exception->getMessage());
        }
    }

    public function edit($id)
    {
        try {
            $users = DB::table('users')
                ->where('id', $id)
                ->first();

                $roles = DB::table('roles')->get();
            return view('back-end.pages.admin.edit', compact('users','roles'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     */

    public function update(Request $request, $id)
    {
        // dd($request);
        $request->validate([
            'email' => 'required',
            'name' => 'required',
            'password' => 'required|confirmed|min:6',
        ]);
    
        try {
            // Retrieve the existing user record by its ID
            $user = User::find($id);
    
            if (!$user) {
                return redirect()->route('users.index')
                    ->with('error', 'User not found');
            }
            
            DB::table('users')->where('id', $id)->update([
                'name' => $request->name,
                'email' => $request->email,
                'types'=>$request->role_id,
                'password' => Hash::make($request->password),
                'role_id'=>$request->role_id,
                'updated_at' => Carbon::now(),
            ]);

            return redirect()->route('users.index')
                ->with('success', 'User Updated Successfully');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }
    public function destroy($id)
    {
        try {
            DB::table('users')
                ->where('id', $id)
                ->delete();

            return redirect()->route('users.index')
                ->with('success', 'Deleted Successfully');

        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }
}
