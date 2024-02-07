<!DOCTYPE html>
<html lang="en">
<head>
  <title>Categories</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">@if (Route::has('register')) @auth
                    <div></div>
                    @else
                        <a href="{{ route('register') }}" target="_blank" class="nav-link"> <span class="glyphicon glyphicon-user"></span> Sing Up</a>
                    @endauth
                    @endif
</li>
        <li class="nav-item">@if (Route::has('login')) @auth
                    <a class="nav-link" href="{{ route('logout') }}"
                   onclick="event.preventDefault(); document.getElementById('logout-form').submit();" > <i class="fas fa-sign-out-alt"></i> Log Out</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
                    @else
                        <a href="{{ route('login') }}" target="_blank" class="nav-link"> <span class="glyphicon glyphicon-log-in"></span> Login In</a>
                    @endauth
                    @endif
</li>
    </ul>
  </div>
</nav>
</div>

  
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

</div>
</body>
</html>