<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ url('/home') }}" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ url('/posts') }}" class="nav-link">Posts</a>
      </li>
      @if (Auth::user())
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{ url('/dashboard') }}" class="nav-link">Dashboard</a>
      </li>
      @endif
    </ul>
    <!-- Right navbar links -->
    @if (Auth::user())
      <ul class="navbar-nav ml-auto">
        <li class="nav-item d-none d-sm-inline-block">
          <a class="nav-link">{{ Auth::user()->name }}</a>
        </li>
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge">Logout</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <div class="dropdown-divider"></div>
          <a href="{{ url('/logout') }}" class="dropdown-item">
              <i class="fas fa-envelope mr-2"></i> Logout
            </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
              class="fas fa-th-large"></i></a>
        </li>
      </ul>
    @else
      <ul class="navbar-nav ml-auto">
        <li class="nav-item d-none d-sm-inline-block">
          <a href="{{ url('/login') }}" class="nav-link">Zaloguj się</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="{{ url('/register') }}" class="nav-link">Zarejestruj się</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
              class="fas fa-th-large"></i></a>
        </li>
      </ul>
    @endif
  </nav>