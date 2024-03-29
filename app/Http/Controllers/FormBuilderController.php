<?php

namespace App\Http\Controllers;

use App\Models\FormBuilder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
class FormBuilderController extends Controller
{
    //
    public function index()
    {
        $user = Auth::user();
        $forms = DB::table('form_builders')
            ->where('author', $user->id)
            ->get();
            
        $allforms = DB::table('form_builders')
            ->join('users', 'form_builders.author', '=', 'users.id')
            ->join('categories', 'form_builders.author', '=', 'categories.organization_id')
            ->select('form_builders.*', 'users.name as organization_name')
            ->orderBy('form_builders.id', 'DESC')
            ->get();
            
            // dd($user->id);
        return view('FormBuilder.index', compact('forms','allforms'));
    }

    public function create(Request $request)
    {
        // dd($request);
        $item = new FormBuilder();
        $item->category_id = $request->category_id;
        $item->author = $request->author;
        $item->category_name = $request->category_name;
        $item->form_name = $request->form_name;
        $item->content = $request->form;
        $item->save();

        return response()->json('added successfully');
    }

    public function editData(Request $request)
    {
        return FormBuilder::where('id', $request->id)->first();
    }

    public function update(Request $request)
    {
        $item = FormBuilder::findOrFail($request->id);
        $item->category_id = $request->category_id;
        $item->author = $request->author;
        $item->category_name = $request->category_name;
        $item->form_name = $request->form_name;
        $item->content = $request->form;
        $item->update();
        return response()->json('updated successfully');
    }

    public function destroy($id)
    {
        $form = FormBuilder::findOrFail($id);
        $form->delete();

        return redirect('form-builder')->with('success', 'Form deleted successfully');
    }
}
