<!DOCTYPE html>
<html lang="en">
<head>
  <title>Task-1</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Task-1</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li>@if (Route::has('register')) @auth
                    <div></div>
                    @else
                        <a href="{{ route('register') }}" target="_blank" style="color: white"> <span class="glyphicon glyphicon-user"></span> Sing Up</a>
                    @endauth
                    @endif
      <li>
        <li>@if (Route::has('login')) @auth
                    <a class="dropdown-item dropdown-footer" href="{{ route('logout') }}"
                   onclick="event.preventDefault(); document.getElementById('logout-form').submit();" > <i class="fas fa-sign-out-alt"></i> Log Out</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
                    @else
                        <a href="{{ route('login') }}" target="_blank" style="color: white"> <span class="glyphicon glyphicon-log-in"></span> Login In</a>
                    @endauth
                    @endif
      <li>
      
    </ul>
  </div>
</nav>
</div>

  
<div class="container">
  <h3>Right Aligned Navbar</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
</div>

</body>
</html>