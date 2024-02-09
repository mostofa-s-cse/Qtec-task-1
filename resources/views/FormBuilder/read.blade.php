@extends('back-end.layouts.master')
@section('title','Read Form')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Read Form</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Read Form</li>
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
                        <form method="POST" action="{{ URL('save-form-transaction') }}">
                            @csrf
                            <input type="hidden" value="{{Auth::user()->id}}" id="author" name="author">
                            <input type="number" id="form_id" name="form_id" hidden/>
                            <div id="fb-reader"></div>
                            <input type="submit" value="Save" class="btn btn-success" />
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('js')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
    <script src="{{ URL::asset('assets/form-builder/form-render.min.js') }}"></script>
    <script>
         $(document).ready(function () {
            $("#side-side-form-builder").addClass('active');
        });
        $(function() {
            $.ajax({
                type: 'get',
                headers: {
                    'Authorization': 'Bearer ' + localStorage.getItem('token')
                },
                url: '{{ URL('get-form-builder') }}',
                data: {
                    'id': {{ $id }}
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