@extends('back-end.layouts.master')
@section('content-header')
    <h1 style="font-family: 'Arial Narrow';">
        Create Role
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-pie-chart"></i>Administrator</a></li>
        <li class="active">role create</li>
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
            <div class="row">
                <form action="{{route('roles.store')}}" method="post">
                    @csrf
                    <div class="form-group col-md-12">
                        <label for="">Name</label><span style="font-weight: bold; color: red"> *</span>
                        <input type="text" name="name" class="form-control">
                    </div>

                    <div class="form-group col-md-12">
                        <label for="">Select permissions</label><span style="font-weight: bold; color: red"> *</span>
                        <select multiple name="permissions[]" id="" class="form-control select2">
                            <option value="">select</option>
                            @foreach($permissions as $permission)
                                <option value="{{$permission->name}}">{{$permission->name}}</option>
                            @endforeach
                        </select>
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
            $("#side-administrators").addClass('active');
            $("#side-role").addClass('active');
            $("#side-role").addClass('active-sidebar');
        });
    </script>
@endsection
