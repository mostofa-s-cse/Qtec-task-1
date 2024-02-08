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


public function submissiondata($id)
    {
        try {
            // $data = DB::table('forms')
            //     ->where('form_id', $id)
            //     ->join('users', 'forms.author', '=', 'users.id')
            //     ->join('form_builders', 'forms.category_id ', '=', 'form_builders.category_id')
            //     ->select('forms.*', 'users.name as user_name','form_builders.category_name')
            //     ->get();

            $data = DB::table('forms')
            ->where('forms.form_id', $id)
            ->join('users', 'forms.author', '=', 'users.id')
            ->join('form_builders', 'forms.category_id', '=', 'form_builders.category_id')
            ->select('forms.*', 'users.name as user_name', 'form_builders.category_name as category_name')
            ->get();

            // $data = DB::table('forms')
            //     ->where('form_id', $id)
            //     ->join('form_builders', 'form_builders.name', '=', 'forms.form_id')
            //     ->join('categories', 'categories.id', '=', 'form_builders.name')
            //     ->join('users', 'forms.author', '=', 'users.id')
            //     ->select(
            //         'forms.*',
            //         'form_builders.name as form_builder_name',
            //         'categories.name as category_name',
            //         'users.name as user_name'
            //     )
            //     ->get();

                // dd( $data);
                
            return view('FormBuilder.submissiondata', compact('data'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }


    public function readformdata(Request $request)
    {
        $item = Forms::findOrFail($request->id);
        return $item;
    }
    
    public function create(Request $request)
    {
        // dd($request);
        $request->request->remove('_token');
        $item = new Forms();
        $item->author = $request->author;
        $item->form_id = $request->form_id;
        $item->category_id = $request->category_id;
        $request->request->remove('form_id');
        $item->form = $request->all();
        $item->save();
        return redirect('form-builder')->with('success', 'Form submit successfully');
    }
}
