@php
    $site_info = \Illuminate\Support\Facades\DB::table('site_infos')->first();
@endphp
<div class="container-fluid bg-primary">
    <div class="container">
        <nav class="navbar navbar-dark navbar-expand-lg py-0">
            <a href="{{ route('frontend.index') }}" class="navbar-brand">
                <h1 class="text-white fw-bold d-block">@if($site_info) {{$site_info->first_name}}<span class="text-secondary">{{$site_info->last_name}}</span>  @endif  </h1>
            </a>
            <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse bg-transparent" id="navbarCollapse">
                <div class="navbar-nav ms-auto mx-xl-auto p-0">
                    <a href="{{ route('frontend.index') }}" class="nav-item nav-link" id="home-home">Home</a>
                    <a href="{{ route('abouts') }}" class="nav-item nav-link" id="home-about">About</a>
                    <a href="{{ route('services') }}" class="nav-item nav-link" id="home-services">Services</a>
                    <a href="{{ route('projects') }}" class="nav-item nav-link" id="home-projects">Projects</a>
{{--                    <div class="nav-item dropdown">--}}
{{--                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>--}}
{{--                        <div class="dropdown-menu rounded">--}}
{{--                            <a href="blog.html" class="dropdown-item">Our Blog</a>--}}
{{--                            <a href="team.html" class="dropdown-item">Our Team</a>--}}
{{--                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>--}}
{{--                            <a href="404.html" class="dropdown-item">404 Page</a>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                    <a href="{{ route('contact') }}" class="nav-item nav-link" id="home-contact">Contact</a>
                </div>
            </div>
            <div class="d-none d-xl-flex flex-shirink-0">
                <div id="phone-tada" class="d-flex align-items-center justify-content-center me-4">
                    <a href="" class="position-relative animated tada infinite">
                        <i class="fa fa-phone-alt text-white fa-2x"></i>
                        <div class="position-absolute" style="top: -7px; left: 20px;">
                            <span><i class="fa fa-comment-dots text-secondary"></i></span>
                        </div>
                    </a>
                </div>
                <div class="d-flex flex-column pe-4 border-end">
                    <span class="text-white-50">Have any questions?</span>
                    <span class="text-secondary">Call: @if($site_info) {{$site_info->phone}} @endif</span>
                </div>
                <div class="d-flex align-items-center justify-content-center ms-4 ">
                    @if (Route::has('login'))

                    @auth
                    <a class="btn btn-success" href="{{ route('dashboard') }}" target="_blank" style="color: white">Dashboard</a>
                    @else
                        <a class="btn btn-success" href="{{ route('login') }}" target="_blank" style="color: white">Log in</a>
                    @endauth
                    @endif
                </div>
            </div>
        </nav>
    </div>
</div>
