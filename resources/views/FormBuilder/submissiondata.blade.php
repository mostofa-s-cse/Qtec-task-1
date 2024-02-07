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
                            <table id="example1" class="table table-bordered table-striped data-table">
                                <thead>
                                <tr class="" style="text-align:center; ">
                                    <th style="width: 7%">SL</th>
                                    <th style="width: 8%">author</th>
                                    <th style="width: 15%">form_id</th>
                                    <th style="width: 8%">created_at</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                                </thead>

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
    <script>
        var datatable = $('.data-table').DataTable({
            order: [],
            lengthMenu: [[10, 20, 30, 50, 100, -1], [10, 20, 30, 50, 100, "All"]],
            processing: true,
            responsive: true,
            serverSide: true,
            language: {
                processing: '<i class="ace-icon fa fa-spinner fa-spin bigger-500" style="font-size:60px;"></i>'
            },
            scroller: {
                loadingIndicator: false
            },
            pagingType: "full_numbers",

            ajax: {
                url: "{{route('submission.index')}}",
                type: "get",
            },
            columns: [
                {data: "DT_RowIndex", name: "DT_RowIndex", orderable: false,},
                {data: 'author', name: 'author', orderable: true},
                {data: 'form_id', name: 'form_id', orderable: true,},
                {data: 'created_at', name: 'created_at', orderable: true},
                {data: 'action', searchable: false, orderable: false}

                //only those have manage_user permission will get access

            ],
        });
    </script>
@endsection
