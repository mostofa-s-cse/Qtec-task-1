@extends('back-end.layouts.master')
@section('title','Edit Form')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Edit Form</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Edit Form</li>
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
                            <label for="name">{{__('Form Name')}}</label>
                            <input type="text" id="form_name" name="form_name" class="form-control mb-4" />
                            <input type="hidden" id="author" name="author" class="form-control mb-4" />
                            <input type="hidden" id="category_id" name="category_id" class="form-control mb-4" />
                            <input type="hidden" id="category_name" name="category_name" class="form-control mb-4" />
                            
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
         $(document).ready(function () {
            $("#side-side-form-builder").addClass('active');
        });
        var fbEditor = document.getElementById('fb-editor');
        var formBuilder = $(fbEditor).formBuilder({
            onSave: function(evt, formData) {
                saveForm(formData);
            },
        });

        $(function() {
            $.ajax({
                type: 'get',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem('token')
                },
                url: '{{ URL('admin-get-form-builder-edit') }}',
                data: {
                    'id': '{{ $id }}'
                },
                success: function(data) {
                    $("#form_name").val(data.form_name);
                    $("#author").val(data.author);
                    $("#category_id").val(data.category_id);
                    $("#category_name").val(data.category_name);
                    
                    console.log(data);
                    formBuilder.actions.setData(data.content);
                }
            });
        });

        function saveForm(form) {
            $.ajax({
                type: 'post',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem('token')
                },
                url: '{{ URL('admin-update-form-builder') }}',
                data: {
                    'form': form,
                    'author': $("#author").val(),
                    'category_id': $("#category_id").val(),
                    'category_name': $("#category_name").val(),
                    'form_name': $("#form_name").val(),
                    'id': {{ $id }},
                    "_token": "{{ csrf_token() }}",
                },
                success: function(data) {
                    location.href = "/admin-form-builder";
                }
            });
        }
    </script>
@endsection

