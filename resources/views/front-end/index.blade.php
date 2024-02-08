@extends('front-end.layouts.master')
@section('title','Task 1')
@section('content')

<div class="container">
        @if (Auth::check())
            <h4 class="mb-5 mt-5 text-center">Wellcome {{ Auth::user()->name }}</h4>
        @else
            <div></div>
        @endif

  <h2 class="mt-5">All Organizations</h2>
    <div class="row mt-5">
  @foreach($organizations as $key => $item)
          <div class="col-sm-4 mb-2">
                <div class="card">
                  <div class="card-body">
                    <a href="individual-categories/{{ $item->id }}" ><h5 class="card-title">{{ $item->name }}</h5> </a>
                  </div>
                </div>
                </div>
            @endforeach
</div>

    <!-- <input type="submit" class="btn btn-primary" value="Submit" onclick="saveForm()"> -->

    @endsection