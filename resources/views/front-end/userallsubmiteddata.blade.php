@extends('front-end.layouts.master')
@section('title','All Submited Forms')
@section('content')
                <div class="container">
  <h2 class="mt-5">All Submited Forms</h2>
    <div class="row mt-5">
          <div class="col-sm-12 mb-2">
                <div class="card">
                  <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Category Name</th>
                                <th>Form Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $item)
                            <tr>
                                <td>{{ $item->category_name }}</td>
                                <td>{{ $item->form_name }}</td>
                                <td><a class="btn btn-primary" href="/red-submited-data/{{$item->form_id}}">View</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                  </div>
                </div>
                </div>
</div>
@endsection