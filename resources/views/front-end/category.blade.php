@extends('front-end.layouts.master')
@section('title','Categories')
@section('content')


  
<div class="container">
  <h2 class="mt-5">All Categories</h2>
    <div class="row mt-5">
  @foreach($categories as $item)
          <div class="col-sm-4 mb-2">
                <div class="card">
                  <div class="card-body">
                    <a href="/read-form/{{$item->id}}" ><h5 class="card-title">{{ $item->name }}</h5> </a>
                  </div>
                </div>
                </div>
            @endforeach
</div>

    <!-- <input type="submit" class="btn btn-primary" value="Submit" onclick="saveForm()"> -->

    @endsection
