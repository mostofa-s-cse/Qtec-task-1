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
            $data = DB::table('forms')
            ->where('forms.form_id', $id)
            ->join('users', 'forms.author', '=', 'users.id')
            ->join('form_builders', 'forms.category_id', '=', 'form_builders.category_id')
            ->select('forms.*', 'users.name as user_name', 'form_builders.category_name as category_name')
            ->get();    
            return view('FormBuilder.submissiondata', compact('data'));
        } catch (\Exception $exception) {
            return back()->with($exception->getMessage());
        }
    }

   public function submitedsingledata($id)
{
    try {
        $data = DB::table('forms')
            ->where('author', $id)
            ->first(); 

        if ($data) {
            $forms = json_decode($data->form);

            if ($data) {
                return view('FormBuilder.readsubmitdata', compact('forms'));
            } else {
                throw new \Exception("Failed to decode form data from JSON.");
            }
        } else {
            throw new \Exception("No form data found for the given author ID.");
        }
    } catch (\Exception $exception) {
        return back()->withError($exception->getMessage());
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
