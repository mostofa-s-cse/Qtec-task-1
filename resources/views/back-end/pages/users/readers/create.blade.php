@extends('back-end.layouts.master')
@section('content-header')
    <h1 style="font-family: 'Arial Narrow';">
        Create Reader
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-pie-chart"></i>Users</a></li>
        <li class="active">create reader</li>
    </ol>
@endsection
@section('content')
    <div class="box">
        <div class="box-body">
            @if ($errors->any())
                <div style="width: 20%">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li class="text-danger">
                                {{ $error }}
                            </li>
                        @endforeach
                    </ul>
                </div>
            @endif
            {{--            <section class="loading">--}}
            {{--                <div class="loading-content">--}}
            {{--                    <i class="fa fa-spinner fa-spin"></i>--}}
            {{--                </div>--}}
            {{--            </section>--}}
            <div class="row">
                <form action="{{route('readers.store')}}" method="post">
                    @csrf
                    <div class="form-group col-md-12">
                        <label for="">Name</label><span style="font-weight: bold; color: red"> *</span>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="">Email</label><span style="font-weight: bold; color: red"> *</span>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="">Password</label><span style="font-weight: bold; color: red"> *</span>
                        <input type="text" name="password" class="form-control">
                    </div>
                    <div class="form-group col-md-12">
                        <button class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>

        </div>
    </div>

@endsection
@section('js')
    <script>
       $(document).ready(function () {
            $("#side-users").addClass('active');
            $("#side-readers").addClass('active');
            $("#side-readers").addClass('active-sidebar');
        });
    </script>
@endsection
