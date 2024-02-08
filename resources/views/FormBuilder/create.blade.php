@php
    $categories = \Illuminate\Support\Facades\DB::table('categories')->where('author', Auth::user()->id)->get();
@endphp

@extends('back-end.layouts.master')
@section('title','Create Form')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Create Form</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Create Form</li>
            </ol>
        </div><!-- /.col -->
    </div>
@endsection
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <input type="hidden" value="{{Auth::user()->id}}" id="author" name="author">
                            <input type="hidden" value="" id="category_name" name="category_name">
                                    <label>Categories <span class="text-danger">*</span></label>
                                    <select class="select2 form-select form-control" id="category_id" name="category_id">
                                        <option value="">Select Categories</option>
                                        @foreach ($categories as $item)
                                            <option value="{{$item->id}}" >{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                        <div id="fb-editor"></div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('js')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
    <script src="{{ URL::asset('assets/form-builder/form-builder.min.js') }}"></script>
    <script>
        jQuery(function($) {
            $(document.getElementById('fb-editor')).formBuilder({
                onSave: function(evt, formData) {
                    console.log(formData);
                    saveForm(formData);
                },
            });
        });

        $(document).ready(function(){
        $('#category_id').change(function(){ 
            var selectedCategory = $(this).val(); 
            var selectedCategoryName = $(this).find('option:selected').text(); 
            $('#category_name').val(selectedCategoryName); 
        });
    });

        function saveForm(form) {
            $.ajax({
                type: 'post',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem('token')
                },
                url: '{{ URL('save-form-builder') }}',
                data: {
                    'form': form,
                    'author': $("#author").val(),
                    'category_id': $("#category_id").val(),
                    'category_name':$("#category_name").val(),
                    "_token": "{{ csrf_token() }}",
                },
                success: function(data) {
                    location.href = "/form-builder";
                    console.log(data);
                }
            });
        }
    </script>
@endsection
