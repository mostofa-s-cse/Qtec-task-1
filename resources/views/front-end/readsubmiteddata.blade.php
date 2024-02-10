@php
use Illuminate\Support\Facades\Auth;
    $forms = \Illuminate\Support\Facades\DB::table('forms')
    ->where('author', Auth::user()->id)
    ->where('form_id',$id)->first();
    // dd($forms)
    // $data = json_decode($forms->form);
@endphp
@extends('front-end.layouts.master')
@section('title','Read Submit Form')
@section('content')
<div class="container">   
  <div class="row mt-4">
                <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                             @if ($forms)
                            
                                @php
                                $data = json_decode($forms->form);
                                @endphp
                                @foreach ($data as $key => $value)
                                    @if ($key != 'category_id' && $key != 'author')
                                        <h4><span>{{ ucwords($key) }}</span> : {{ $value }}</h4>
                                    @endif
                                @endforeach
                            @else
                                <h4 class="mb-2">No Submited any forms</h4>
                            @endif
                    </div>
                </div>
                </div>

@endsection