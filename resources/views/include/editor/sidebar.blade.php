<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                {{-- <div class="sidebar-brand-icon "> --}}
                    {{-- <img src="{{ asset('template_admin/img/logojatra.png') }}" class="rounded" alt="..." width="45px"> --}}
                {{-- </div> --}}
                <div class="sidebar-brand-text mx-3">My <sup>ToDo</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Divider -->
            <hr class="sidebar-divider">
            
             <!-- Nav Item - Karir -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('editor.users') }}">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User</span></a>
            </li>

        
              <li class="nav-item">
                <a class="nav-link" href="{{route('editor.corevalue')}}">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Daftar</span></a>
            </li>

        
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>