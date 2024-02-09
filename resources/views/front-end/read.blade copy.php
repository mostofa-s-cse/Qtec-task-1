@php
    $forms = \Illuminate\Support\Facades\DB::table('forms')
    ->where('author', Auth::user()->id)
    ->where('category_id',$name)->first();
    $data = json_decode($forms->form);

    // dd($forms);
@endphp
@extends('front-end.layouts.master')
@section('title','Form Read')
@section('content')
<div class="container">   
  <div class="row mt-4">
                <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                     
                    </div>
                </div>
                </div>
@endsection