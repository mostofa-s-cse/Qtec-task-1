@extends('front-end.layouts.master')
@section('title','Form Read')
@section('content')
<div class="container">   
  <div class="row mt-4">
                <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                    <form method="POST" action="{{ URL('save-form-user') }}">
                            @csrf
                            <input type="hidden" value="{{Auth::user()->id}}" id="author" name="author">
                            <input type="hidden" value="{{ $name }}" id="category_id" name="category_id">
                            <input type="number" id="form_id" name="form_id" hidden/>
                            <div id="fb-reader"></div>
                            <input type="submit" value="Save" class="btn btn-success" />
                        </form>
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