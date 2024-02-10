@php
use Illuminate\Support\Facades\Auth;
    $forms = \Illuminate\Support\Facades\DB::table('forms')
    ->where('author', Auth::user()->id)
    ->where('category_id',$name)->first();
    
    // $data = json_decode($forms->form);
@endphp
@extends('front-end.layouts.master')
@section('title','Form Read')
@section('content')
<div class="container">   
  <div class="row mt-4">
                <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                        @if ($forms && $forms->author == Auth::user()->id && $forms->category_id == $name)
                                <h4 class="mb-2">This form has already been submitted by you.</h4>
                                <hr/>
                                @php
                                $data = json_decode($forms->form);
                                @endphp
                                @foreach ($data as $key => $value)
                                    @if ($key != 'category_id' && $key != 'author')
                                        <h4><span>{{ ucwords($key) }}</span> : {{ $value }}</h4>
                                    @endif
                                @endforeach
                            @else
                                <form method="POST" action="{{ URL('save-form-user') }}">
                                    @csrf
                                    <input type="hidden" value="{{ Auth::user()->id }}" id="author" name="author">
                                    <input type="hidden" value="{{ $name }}" id="category_id" name="category_id">
                                    <input type="number" id="form_id" name="form_id" hidden>
                                    
                                    <div id="fb-reader"></div>
                                    <input type="submit" value="Save" class="btn btn-success">
                                </form>
                            @endif


                    </div>
                </div>
                </div>


@endsection
@section('js')

<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
    <script src="{{ URL::asset('assets/form-builder/form-render.min.js') }}"></script>
    <script>
        $(function() {
            $.ajax({
                type: 'get',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem('token')
                },
                url: '{{ URL('get-form') }}',
                data: {
                    'category_id': {{ $name }}
                },
                success: function(data) {
                    $("#form_id").val(data.id);
                    $('#fb-reader').formRender({
                        formData: data.content
                    });
                }
            });
        });
    </script>
@endsection