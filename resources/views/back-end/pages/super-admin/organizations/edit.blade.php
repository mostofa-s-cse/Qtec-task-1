@extends('back-end.layouts.master')
@section('title','Update organizations')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Update organizations</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">organizations</li>
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
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Update organizations</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form action="{{route('organizations.update',$organizations->id)}}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="card-body">
                            <div class="form-group">
                            <label for="">Name</label><span style="font-weight: bold; color: red"> *</span>
                            <input type="text" name="name" value="{{$organizations->name}}" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Email</label><span style="font-weight: bold; color: red"> *</span>
                                <input type="text" name="email" value="{{$organizations->email}}" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Password</label><span style="font-weight: bold; color: red" require> *</span>
                                <input type="text" name="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Confirm password</label><span style="font-weight: bold; color: red" require> *</span>
                                <input type="text" name="password_confirmation" class="form-control">
                            </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="submit" class="btn btn-default float-right">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('js')
    <script>
        $(document).ready(function () {
            $("#side-organizations").addClass('active');
        });
    </script>
@endsection
