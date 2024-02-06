<?php

namespace App\Http\Controllers;

use App\Models\FormBuilder;
use App\Models\Forms;
use Illuminate\Http\Request;

class FormsController extends Controller
{
    //
    public function read(Request $request)
    {
        $item = FormBuilder::findOrFail($request->id);
        return $item;
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
