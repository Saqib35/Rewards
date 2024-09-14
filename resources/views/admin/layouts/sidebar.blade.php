<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <div class="vertical-menu">
            <div data-simplebar class="h-100">
                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        
                        <li>
                            <a href="{{ url('panel/admin/home') }}">
                                <i data-feather="home"></i>
                                <span class="badge rounded-pill bg-soft-success text-success float-end">New</span>
                                <span data-key="t-dashboard">Dashboard </span>
                            </a>
                        </li>
                      

                        <li>
                            <a href="{{ url('panel/admin/users') }}">
                                <i class="fa fa-user" style="font-size:17px"></i>
                                <span data-key="t-dashboard">Show All User</span>
                            </a>
                        </li>

                     
                        <li>
                            <a href="javascript: void(0);" class="has-arrow">
                             <i class="fa fa-gift" style="font-size:17px"></i>
                                <span data-key="t-ecommerce">Vouchar Management</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{  url('panel/admin/add-vouchar') }}" key="t-products">Add Vouchar</a></li>
                                <li><a href="{{ url('panel/admin/show-vouchar') }}" key="t-products">Show Vouchar</a></li>
                            </ul>
                        </li>
                        
                        
                         
                        <li>
                            <a href="{{ url('panel/admin/show-vouchar-assign') }}">
                                <i class="fa fa-bomb" style="font-size:17px"></i>
                                <span data-key="t-dashboard">All Assigned Vouchar</span>
                            </a>
                        </li>
                        
                        
                        <!--<li>-->
                        <!--    <a href="javascript: void(0);" class="has-arrow">-->
                        <!--    <i data-feather="bo">📆</i> -->
                        <!--        <span data-key="t-ecommerce">Rate Weekly Manage...</span>-->
                        <!--    </a>-->
                        <!--    <ul class="sub-menu" aria-expanded="false">-->
                        <!--        <li><a href="{{  url('panel/admin/add-rate-by-week') }}" key="t-products">Add Rate By Weekly</a></li>-->
                        <!--        <li><a href="{{ url('panel/admin/show-rate-by-week') }}" key="t-products">Show Rate By Weekly</a></li>-->
                        <!--    </ul>-->
                        <!--</li>-->

                        <!--<li>-->
                        <!--    <a href="javascript: void(0);" class="has-arrow">-->
                        <!--    <i data-feather="hoe">💎</i>-->
                        <!--        <span data-key="t-ecommerce">Rate Daily Manage...</span>-->
                        <!--    </a>-->
                        <!--    <ul class="sub-menu" aria-expanded="false">-->
                        <!--        <li><a href="{{  url('panel/admin/add-rate-by-day') }}" key="t-products">Add Rate By Daily</a></li>-->
                        <!--        <li><a href="{{ url('panel/admin/show-rate-by-day') }}" key="t-products">Show Rate By Daily</a></li>-->
                        <!--    </ul>-->
                        <!--</li>-->
                        

                        
                  

                        <!--<li>-->
                        <!--    <a href="javascript: void(0);" class="has-arrow">-->
                        <!--    <i class="fa fa-bomb" style="font-size:17px"></i>-->
                        <!--        <span data-key="t-ecommerce">Web Stories Manage...</span>-->
                        <!--    </a>-->
                        <!--    <ul class="sub-menu" aria-expanded="false">-->
                        <!--        <li><a href="{{  url('panel/admin/add-web-stories') }}" key="t-products">Add Web Story</a></li>-->
                        <!--        <li><a href="{{ url('panel/admin/show-web-stories') }}" key="t-products">Show Web Story</a></li>-->
                        <!--    </ul>-->
                        <!--</li>-->


                        
                        <li>
                            <a href="javascript: void(0);" class="has-arrow">
                            <i class="fas fa-ad" style="font-size:17px"></i>
                                <span data-key="t-ecommerce">Banner Ads</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{  url('panel/admin/add-banner-ads') }}" key="t-products">Add Banner Ads</a></li>
                                <li><a href="{{ url('panel/admin/show-banner-ads') }}" key="t-products">Show Banner Ads</a></li>
                            </ul>
                        </li>
                  
                          <li>
                            <a href="javascript: void(0);" class="has-arrow">
                              <i class="fa fa-tv" style="font-size:17px"></i>
                                <span data-key="t-ecommerce">Load Businnes</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{  url('panel/admin/add-business-directory') }}" key="t-products">Add Business Ads</a></li>
                                <li><a href="{{ url('panel/admin/show-business-directories') }}" key="t-products">Show Business Ads</a></li>
                            </ul>
                        </li>
                  
                        <li>
                            <a href="{{ url('panel/admin/indexing-api-google') }}" >
                                <i class="fa fa-google" style="font-size: 17px;"></i>
                                <span data-key="t-user">Indexing  Api</span>
                            </a>
                        </li>



                        <li>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                <i class="fa fa-sign-out" style="font-size:24px"></i> <span data-key="t-authentication">Logout </span>
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </li>
                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>