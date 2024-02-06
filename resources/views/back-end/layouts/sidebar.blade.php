@php
    $user = \Illuminate\Support\Facades\DB::table('users')->first();
@endphp
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route("dashboard")}}" class="brand-link">
        <span class="brand-text font-weight-light">Task-1</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('backend/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::user()->name }}</a>
            </div>
        </div>


        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->

                <!-- @can('organizations') -->
                <li class="nav-item">
                    <a href="{{route("organizations.index")}}" class="nav-link" id="side-organizations">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Organizations
                            {{-- <i class="fas fa-angle-left right"></i> --}}
                        </p>
                    </a>
                </li>
                <!-- @endcan -->
                <li class="nav-item">
                    <a href="{{route("categories.index")}}" class="nav-link" id="side-categories">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Categories
                            {{-- <i class="fas fa-angle-left right"></i> --}}
                        </p>
                    </a>
                </li>


                <li class="nav-item">
                    <a href="{{ URL('form-builder') }}" class="nav-link" id="side-categories">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Form Builder
                            {{-- <i class="fas fa-angle-left right"></i> --}}
                        </p>
                    </a>
                </li>

                    </ul>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
