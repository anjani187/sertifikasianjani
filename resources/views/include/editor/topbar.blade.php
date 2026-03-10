<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

   
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>

   
    <ul class="navbar-nav ml-auto">

        <div class="topbar-divider d-none d-sm-block"></div>

       
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown"
               role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">

                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                    {{ Auth::user()->name }}
                </span>

                <img class="img-profile rounded-circle"
                     src="{{ asset('template_admin/img/undraw_profile.svg') }}">
            </a>

            
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                 aria-labelledby="userDropdown">

                <div class="dropdown-divider"></div>

                
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Logout
                </a>

            </div>
        </li>

    </ul>
</nav>

<!-- Logout Modal -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
     aria-labelledby="logoutModalLabel" aria-hidden="true">

    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">Logout</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <div class="modal-body">
                Apakah kamu yakin ingin logout?
            </div>

            <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">
                    Batal
                </button>

                
                <form action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button type="submit" class="btn btn-danger">
                        Logout
                    </button>
                </form>
            </div>

        </div>
    </div>
</div>
