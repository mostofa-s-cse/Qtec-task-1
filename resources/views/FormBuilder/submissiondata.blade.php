@extends('back-end.layouts.master')
@section('title','Submission')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Submission List</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Submission</li>
            </ol>
        </div><!-- /.col -->
    </div>
@endsection
@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between">
                            <h3 class="card-title">Submission List</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr class="" style="text-align:center; ">
                                    <th style="width: 8%">User</th>
                                    <th style="width: 15%">Form Name</th>
                                    <th style="width: 8%">Date/Time</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach ($data as $item)
                                <tr>
                                    <td>{{ $item->user_name }}</td>
                                    <td>{{ $item->category_name }}</td>
                                    <td>{{ \Carbon\Carbon::parse($item->created_at)->format('Y-m-d h:i:s') }}</td>
                                    <td>
                                    <a href="{{ URL('read-submit-form-data', $item->author) }}" class="btn btn-primary">{{ __('Data View') }}</a>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
        </div>
            <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
@section('js')
    <script>
        $(document).ready(function () {
            $("#side-categories").addClass('active');
        });

    </script>
   

@endsection
