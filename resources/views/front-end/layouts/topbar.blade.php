@php
    $site_info = \Illuminate\Support\Facades\DB::table('site_infos')->first();
    $social_link = \Illuminate\Support\Facades\DB::table('social_links')->get();
@endphp
<div class="container-fluid bg-dark py-2 d-none d-md-flex">
    <div class="container">
        <div class="d-flex justify-content-between topbar">
            <div class="top-info">
                <small class="me-3 text-white-50"><a href="#"><i class="fas fa-phone me-2 text-secondary"></i></a>@if($site_info) {{$site_info->phone}} @endif</small>
                <small class="me-3 text-white-50"><a href="#"><i class="fas fa-envelope me-2 text-secondary"></i></a>@if($site_info) {{$site_info->email}} @endif</small>
            </div>
            <div id="note" class="text-secondary d-none d-xl-flex"><small>Note : We help you to Grow your Business</small></div>
            <div class="top-link">
                @foreach($social_link as $item)
                    <a href="{{$item->link}}" class="bg-light nav-fill btn btn-sm-square rounded-circle"><i class="{{$item->icon}} text-primary"></i></a>
                @endforeach
            </div>
        </div>
    </div>
</div>
