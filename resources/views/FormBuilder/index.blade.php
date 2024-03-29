@php
    $user = \Illuminate\Support\Facades\DB::table('users')->first();
    $authUser = Auth::user();
@endphp
@extends('back-end.layouts.master')
@section('title','Form')
@section('content-header')
    <div class="row mb-2 px-2">
        <div class="col-sm-6">
            <h1 class="m-0">Form</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Form</li>
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
            <a href="{{ URL('formbuilder') }}" class="btn btn-success">{{__('Create')}}</a>
            <table class="table">
                <thead>
                    <th>{{__('Form Name')}}</th>
                    <th>{{__('Category Name')}}</th>
                    <th>{{__('Organization Name')}}</th>
                    <th>{{__('Action')}}</th>
                </thead>
                <tbody>

                    @if ($authUser->types === '1')

                    @foreach ($allforms as $form)
                        <tr>
                            <td>{{ $form->form_name }}</td>
                            <td>{{ $form->category_name }}</td>
                            <td>{{ $form->organization_name }}</td>
                            <td>
                                <a href="{{ URL('edit-form-builder', $form->id) }}" class="btn btn-primary">{{__('Edit')}}</a>
                                <a href="{{ URL('read-form-builder', $form->id) }}" class="btn btn-primary">{{__('Show')}}</a>
                                <a href="{{ URL('get-form', $form->id) }}" class="btn btn-primary">{{ __('Submitted Data View') }}</a>
                                <form method="POST" action="{{ URL('form-delete', $form->id) }}" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"
                                        onclick="return confirm('Are you sure you want to delete this product?')">{{__('Delete')}}</button>
                                </form>
                                
                            </td>
                        </tr>
                    @endforeach
                    @endif
                     @if ($authUser->types === '2')

                    @foreach ($forms as $form)
                        <tr>
                            <td>{{ $form->form_name }}</td>
                            <td>{{ $form->category_name }}</td>
                            <td>
                                <a href="{{ URL('edit-form-builder', $form->id) }}" class="btn btn-primary">{{__('Edit')}}</a>
                                <a href="{{ URL('read-form-builder', $form->id) }}" class="btn btn-primary">{{__('Show')}}</a>
                                <a href="{{ URL('get-form', $form->id) }}" class="btn btn-primary">{{ __('Submitted Data View') }}</a>
                                <form method="POST" action="{{ URL('form-delete', $form->id) }}" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"
                                        onclick="return confirm('Are you sure you want to delete this product?')">{{__('Delete')}}</button>
                                </form>
                                
                            </td>
                        </tr>
                    @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
            </div>
        </div>
    </section>
@endsection
@section('js')
    <script>
         $(document).ready(function () {
            $("#side-side-form-builder").addClass('active');
        });
</script>
 @endsection