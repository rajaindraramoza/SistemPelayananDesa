<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard')?'active':'' }}" aria-current="page" href="/dashboard">
            <span data-feather="home"></span>
            Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/surats*')?'active':'' }}" href="/dashboard/surats">
            <span data-feather="file-plus"></span>
            Ajukan Surat
          </a>
        </li>
      </ul>

      @can('admin')
      <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
        <span>Administrator</span>
      </h6>
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/allsurats*')?'active':'' }}" href="/dashboard/allsurats">
            <span data-feather="file-text"></span>
            Semua Surat
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/posts*')?'active':'' }}" href="/dashboard/posts">
            <span data-feather="folder"></span>
            Postingan
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/register*')?'active':'' }}" href="/dashboard/register">
            <span data-feather="user-plus"></span>
            Tambah User
          </a>
        </li>
      </ul>
      @endcan
    </div>
  </nav>