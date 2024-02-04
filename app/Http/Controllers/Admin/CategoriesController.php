<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Categories;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;


class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {
            if ($request->ajax()) {
                $data = DB::table('categories')
                    ->join('organizations', 'categories.organization_id', '=', 'organizations.id')
                    ->select('categories.*', 'organizations.name as organization_name')
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
                                        href="' . route('categories.edit', $data->id) . '" class="btn btn-sm btn-success" style="cursor:pointer"
                                        title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <a class="btn btn-sm btn-danger" style="cursor:pointer"
                                       href="' . route('categories.destroy', [$data->id]) . '"
                                       onclick="showDeleteConfirm(' . $data->id . ')" title="Delete">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </div>';
                    })
                    ->rawColumns(['organization_name', 'name','description','action'])
                    ->make(true);
            }
            return view('back-end.pages.categories.index');
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
            $organizations = DB::table('organizations')->get();
//            dd($organizations);
            return view('back-end.pages.categories.create',compact('organizations'));
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
            DB::table('categories')->insert([
                'organization_id' => $request->organization_id,
                'name' => $request->name,
                'description' => $request->description,
                'created_at' => Carbon::now(),
            ]);

            return redirect()->route('categories.index')
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
            $organizations = DB::table('organizations')->get();
            return view('back-end.pages.categories.edit', compact('categories','organizations'));
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

            // Update the slider record
            DB::table('categories')->where('id', $id)->update([
                'organization_id' => $request->organization_id,
                'name' => $request->name,
                'description' => $request->description,
                'updated_at' => Carbon::now(),
            ]);

            return redirect()->route('categories.index')
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

            return redirect()->route('categories.index')
                ->with('success', 'Deleted Successfully');

        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }
}
