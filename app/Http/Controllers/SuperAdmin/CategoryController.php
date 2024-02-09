<?php

namespace App\Http\Controllers\SuperAdmin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Categories;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\DataTables;


class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {
            $user = Auth::user();
            if ($request->ajax()) {
                $data = DB::table('categories')
                    ->join('users', 'categories.organization_id', '=', 'users.id')
                    ->select('categories.*', 'users.name as organization_name')
                    ->orderBy('categories.id', 'DESC')
                    ->get();


                return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('organization_name', function ($data) {
                        return $data->organization_name;
                    })
                    ->addColumn('name', function ($data) {
                        return $data->name;
                    })
                    ->addColumn('description', function ($data) {
                        return $data->description;
                    })
                    ->addColumn('action', function ($data) {
                        return '<div class="" role="group">
                                    <a id=""
                                        href="' . route('category.edit', $data->id) . '" class="btn btn-sm btn-success" style="cursor:pointer"
                                        title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <a class="btn btn-sm btn-danger" style="cursor:pointer"
                                       href="' . route('category.destroy', [$data->id]) . '"
                                       onclick="showDeleteConfirm(' . $data->id . ')" title="Delete">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </div>';
                    })
                    ->rawColumns(['organization_name', 'name','description','action'])
                    ->make(true);
            }
            return view('back-end.pages.super-admin.categories.index');
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
            $organizations = DB::table('users')
            ->where('types', 2)
            ->get();
        //    dd($organizations);
            return view('back-end.pages.super-admin.categories.create',compact('organizations'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
//        dd($request);
        $request->validate([
            'organization_id'=> 'required',
            'name' => 'required',
        ]);

        try {
            $user = Auth::user();
                // Check if the category name already exists for the authenticated user
                $existingCategory = DB::table('categories')
                    ->where('author', $user->id)
                    ->where('name', $request->name)
                    ->first();

                if ($existingCategory) {
                    // Category name already exists for this user
                    return redirect()->back()->with('error', 'Category name already exists');
                }

                // If the category name doesn't exist, insert the new category
                DB::table('categories')->insert([
                    'organization_id' => $request->organization_id,
                    'name' => $request->name,
                    'description' => $request->description,
                    'author' => $user->id,
                    'created_at' => now(),
                ]);
                // Redirect back with success message if the insertion is successful
            return redirect()->route('category.index')
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
            $categories = DB::table('categories')
                ->where('id', $id)
                ->first();
            $organizations = DB::table('users')
            ->where('types', 2)
            ->get();
            return view('back-end.pages.super-admin.categories.edit', compact('categories','organizations'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'organization_id'=> 'required',
            'name' => 'required',
        ]);

        try {
            // Retrieve the existing slider record by its ID
            $categories = DB::table('categories')->where('id', $id)->first();

            if (!$categories) {
                return redirect()->route('categories.index')
                    ->with('error', 'categories not found');
            }

            $user = Auth::user();
                // Check if the category name already exists for the authenticated user
                $existingCategory = DB::table('categories')
                    ->where('author', $user->id)
                    ->where('name', $request->name)
                    ->first();

                if ($existingCategory) {
                    // Category name already exists for this user
                    return redirect()->back()->with('error', 'Category name already exists');
                }

            // Update the slider record
            DB::table('categories')->where('id', $id)->update([
                'organization_id' => $request->organization_id,
                'name' => $request->name,
                'author' => $user->id,
                'description' => $request->description,
                'updated_at' => Carbon::now(),
            ]);

            return redirect()->route('category.index')
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
            DB::table('categories')
                ->where('id', $id)
                ->delete();

            return redirect()->route('category.index')
                ->with('success', 'Deleted Successfully');

        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }
}
