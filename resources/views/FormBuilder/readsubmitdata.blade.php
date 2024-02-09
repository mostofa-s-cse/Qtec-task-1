@extends('back-end.layouts.master')
@section('title','Read submitdata')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Read submited data</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Read submitdata</li>
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
                             @foreach ($forms as $item)
                                            <li>{{$item->name}}</li>
                            @endforeach
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>
@endsection
