<?php

namespace App\Http\Controllers\SuperAdmin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Organizations;
use Illuminate\Support\Carbon;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables;


class OrganizationsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {
            if ($request->ajax()) {
                $data = DB::table('users')
                    ->where('types', 2)
                    ->orderBy('id', 'DESC')
                    ->get();

                return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('name', function ($data) {
                        return $data->name;
                    })
                    ->addColumn('email', function ($data) {
                        return $data->email;
                    })
                    ->addColumn('action', function ($data) {
                        return '<div class="" role="group">
                                    <a id=""
                                        href="' . route('organizations.edit', $data->id) . '" class="btn btn-sm btn-success" style="cursor:pointer"
                                        title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <a class="btn btn-sm btn-danger" style="cursor:pointer"
                                       href="' . route('organizations.destroy', [$data->id]) . '"
                                       onclick="showDeleteConfirm(' . $data->id . ')" title="Delete">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </div>';
                    })
                    ->rawColumns(['name','email','action'])
                    ->make(true);
            }
            return view('back-end.pages.super-admin.organizations.index');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        try {
            return view('back-end.pages.super-admin.organizations.create');
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
        $request->validate([
            'email' => 'required',
            'name' => 'required',
            'password' => 'required|confirmed|min:6',
        ], []);
        $types=2;
            DB::table('users')->insert([
                'name' => $request->name,
                'email' => $request->email,
                'types'=>$types,
                'password' => Hash::make($request->password),
                'created_at' => Carbon::now(),
            ]);

            return redirect()->route('organizations.index')
                ->with('success', 'Added Successfully');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        try {
            $organizations = DB::table('users')
                ->where('id', $id)
                ->first();

            return view('back-end.pages.super-admin.organizations.edit', compact('organizations'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        try {
            $request->validate([
            'email' => 'required',
            'name' => 'required',
            'password' => 'required|confirmed|min:6',
            ]);
            // Retrieve the existing user record by its ID
            $user = User::find($id);
            $types=2;
            if (!$user) {
                return redirect()->route('users.index')
                    ->with('error', 'User not found');
            }
            
            DB::table('users')->where('id', $id)->update([
                'name' => $request->name,
                'email' => $request->email,
                'types'=>$types,
                'password' => Hash::make($request->password),
                'updated_at' => Carbon::now(),
            ]);
            return redirect()->route('organizations.index')
                ->with('success', 'Updated Successfully');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            DB::table('users')
                ->where('id', $id)
                ->delete();

            return redirect()->route('organizations.index')
                ->with('success', 'Deleted Successfully');

        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }
}
