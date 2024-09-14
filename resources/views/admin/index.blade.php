@extends('admin.layouts.master')


@section('css')
<style>
    /* Card Styling */
    .card {
      border: none;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    /* Hover Effect */
    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    /* Card Titles Styling */
    .card-title {
      font-size: 1.25rem;
      font-weight: bold;
      color: #333;
    }

    /* Card Text Styling */
    .card-text {
      font-size: 1.5rem;
      font-weight: bold;
      color: #007bff;
    }

    /* Adding Background Colors for Each Card */
    #totalUsers {
      color: #28a745;
    }

    #totalVouchers {
      color: #ffc107;
    }

    #totalBannerAds {
      color: #dc3545;
    }

    #totalBusinessDirectory {
      color: #17a2b8;
    }

    /* Responsive Padding for Better Spacing */
    .container {
      padding: 20px;
    }
  </style>
@endsection


@section('main')

<div id="layout-wrapper">    
    @include ('admin.layouts.sidebar');
    @include ('admin.layouts.topbar')
    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <!-- start page title -->
                <?php
                $maintitle = "Dashboard ";
                $title = "Welcome !";
                ?>
                @include ('admin.layouts.breadcrumb')
               
              
               <div class="row">
                      <!-- Total Users Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Users</h5>
                            <p class="card-text" id="totalUsers">{{ $users }}</p>
                          </div>
                        </div>
                      </div>
                
                      <!-- Total Vouchers Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Vouchers</h5>
                            <p class="card-text" id="totalVouchers">{{$vouchar}}</p>
                          </div>
                        </div>
                      </div>
                
                      <!-- Total Banner Ads Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Banner Ads</h5>
                            <p class="card-text" id="totalBannerAds">{{ $bannerAds }}</p>
                          </div>
                        </div>
                      </div>
                
                      <!-- Total Business Directory Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Business Directory</h5>
                            <p class="card-text" id="totalBusinessDirectory">{{ $businessDirectoryAds }}</p>
                          </div>
                        </div>
                      </div>
                      
                      
                       <!-- Total Users Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Assigned Vouchar</h5>
                            <p class="card-text" id="totalUsers">{{ $totalAssignedVouchers }}</p>
                          </div>
                        </div>
                      </div>
                
                      <!-- Total Vouchers Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Redemmed Vouchar</h5>
                            <p class="card-text" id="totalVouchers">{{ $totalUsedVouchers }}</p>
                          </div>
                        </div>
                      </div>
                      
                      
                        <!-- Total Banner Ads Card -->
                      <div class="col-md-3">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="card-title">Total Unused Vouchar</h5>
                            <p class="card-text" id="totalBannerAds">{{ $totalUnusedVouchers }}</p>
                          </div>
                        </div>
                      </div>
                      
                      
                    </div>
                  </div>




                </div><!-- end row-->


            </div> <!-- container-fluid -->
        </div>
        <!-- End Page-content -->

        
        @include ('admin.layouts.footer')

    </div>
    <!-- end main content-->

</div>
<!-- END layout-wrapper -->
@endsection

@section('js')

@endsection


