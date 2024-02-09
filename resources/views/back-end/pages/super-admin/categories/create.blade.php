@extends('back-end.layouts.master')
@section('title','Create Category')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Create Category</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">category</li>
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
                            <h3 class="card-title">Create Category</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form action="{{route('categories.store')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('POST')
                            <div class="card-body">
                            <input type="hidden" value="{{Auth::user()->id}}" id="organization_id" name="organization_id">
                                <div class="form-group">
                                    <label for="exampleInputFile">Category Name</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="exampleInputFile" name="name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Organization <span class="text-danger">*</span></label>
                                    <select class="select2 form-select form-control" name="organization_id">
                                        <option value="">Select organization</option>
                                        @foreach ($organizations as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Description</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="exampleInputFile" name="description">
                                    </div>
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
            $("#side-categories").addClass('active');
        });

    </script>
@endsection
