<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ url('/home') }}" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-header">Zarządzanie</li>
          @if (Auth::user()->id_group == 'admin')
          <li class="nav-item">
            <a href="{{ url('/add-mod') }}" class="nav-link">
              <i class="nav-icon fas fa-calendar-alt"></i>
              <p>
                Dodaj moderatora
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('/del-mod') }}" class="nav-link">
              <i class="nav-icon fas fa-calendar-alt"></i>
              <p>
                Usun moderatora
              </p>
            </a>
          </li>
          @endif
          @if (Auth::user()->id_group == 'admin' || Auth::user()->id_group == 'moderator' )
          <li class="nav-item">
            <a href="{{ url('/add-post') }}" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Napisz post
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('/edit-post') }}" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Edytuj post
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('/del-post') }}" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Usuń post
              </p>
            </a>
          </li>
          @endif
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>