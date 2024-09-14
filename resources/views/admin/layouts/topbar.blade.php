 <header id="page-topbar">
     <div class="navbar-header">
         <div class="d-flex">
             <!-- LOGO -->
             <div class="navbar-brand-box">
                 <a href="javascript:void(0)" class="logo logo-dark">
                     <span class="logo-sm">
                         <img src="{{ asset('public/assets/logo.png')}}" alt="" height="50">
                     </span>
                     <span class="logo-lg">
                         <img src="{{ asset('public/assets/logo.png')}}" alt="" height="40"> <span class="logo-txt"></span>
                     </span>
                 </a>

                 <a href="javascript:void(0)" class="logo logo-light">
                     <span class="logo-sm">
                         <img src="{{ asset('public/assets/logo.png')}}" alt="" height="50">
                     </span>
                     <span class="logo-lg">
                         <img src="{{ asset('public/assets/logo.png')}}" alt="" height="24"> <span class="logo-txt"></span>
                     </span>
                 </a>
             </div>

             <button type="button" class="btn btn-sm px-3 font-size-16 header-item" id="vertical-menu-btn">
                 <i class="fa fa-fw fa-bars"></i>
             </button>

            
         </div>

         <div class="d-flex">

             <div class="dropdown d-inline-block d-lg-none ms-2">
                 <button type="button" class="btn header-item" id="page-header-search-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <i data-feather="search" class="icon-lg"></i>
                 </button>
                 <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-search-dropdown">

                     <form class="p-3">
                         <div class="form-group m-0">
                             <div class="input-group">
                                 <input type="text" class="form-control" placeholder="Search ..." aria-label="Search Result">

                                 <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                             </div>
                         </div>
                     </form>
                 </div>
             </div>


             <div class="dropdown d-inline-block">
                 <button type="button" class="btn header-item bg-soft-light border-start border-end" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <img class="rounded-circle header-profile-user user-profile-image" src="{{ asset('public/assets/admin-icon.png')}}" alt="Header Avatar" id="user_image">
                     <span class="d-none d-xl-inline-block ms-1 fw-medium setting_user_name" id="setting_user_name">Admin</span>
                     <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                 </button>
                 <div class="dropdown-menu dropdown-menu-end">
                     <a class="dropdown-item" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                                    document.getElementById('logout-form').submit();">
                     <span data-key="t-authentication">Logout </span>
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
                
                 </div>
             </div>

         </div>
     </div>
 </header>