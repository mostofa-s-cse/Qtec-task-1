<?php

namespace App\Http\Controllers;

use App\Models\FormBuilder;
use App\Models\Forms;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class FormsController extends Controller
{
    //
    public function read(Request $request)
    {
        $item = FormBuilder::findOrFail($request->id);
        return $item;
    }

    public function submission(Request $request)
    {

        try {
            if ($request->ajax()) {
                $data= DB::table('forms')
                ->where('form_id', $request->id) 
                ->get();

                return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('author', function ($data) {
                        return $data->author;
                    })
                    ->addColumn('form_id', function ($data) {
                        return $data->form_id;
                    })
                    ->addColumn('created_at', function ($data) {
                        return $data->created_at;
                    })
                    ->addColumn('action', function ($data) {
                        return '<div class="" role="group">
                                    <a id=""
                                        href="' . route('categories.edit', $data->id) . '" class="btn btn-sm btn-success" style="cursor:pointer"
                                        title="View">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                </div>';
                    })
                    ->rawColumns(['author', 'form_id','created_at','action'])
                    ->make(true);
            }
            return view('FormBuilder.submissiondata');
        } catch (\Exception $exception) {
            return redirect()->back()->with('error', $exception->getMessage());
        }
    }


    
    public function create(Request $request)
    {
        // dd($request);
        $request->request->remove('_token');
        $item = new Forms();
        $item->author = $request->author;
        $item->form_id = $request->form_id;
        $request->request->remove('form_id');
        $item->form = $request->all();
        $item->save();
        return redirect('form-builder')->with('success', 'Form submit successfully');
    }
}
