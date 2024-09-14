@extends('admin.layouts.master')

@section('css')

  <script src="https://cdn.ckeditor.com/4.17.1/full-all/ckeditor.js"></script> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">

@endsection


@section('main')

<!-- Begin page -->
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
                $maintitle = "History Padometer";
                $title = "Padometer";
                ?>
                
                @include ('admin.layouts.breadcrumb')
                <!-- end page title -->


                <div class="row">
                    <div class="col-12">
                      
                            <div class="card">
                                <!--<div class="card-header text-center bg-primary text-white">-->
                                <!--    <h2>Pedometer History</h2>-->
                                <!--</div>-->
                                <div class="card-body">
                                  
                            
                                    <!-- Display History Table -->
                                    <div class="table-responsive">
                                       <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Username</th>
                                                <th>Voucher Name</th>
                                                <th>Redeemed At</th>
                                                <th>Created At<th> <!-- Adjust this as needed -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($history as $item)
                                                <tr>
                                                    <td>{{ $item->id }}</td> <!-- Adjust based on your fields -->
                                                    <td>{{ $item->username }}</td>
                                                    <td>{{ $item->voucher_name }}</td>
                                                     <td>{{ $item->redeemed_at }}</td>
                                                    <td>{{ $item->created_at }}</td> <!-- Example of another field -->
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    </div>
                            
                               
                                </div>
                            </div>

                    </div>
                </div>
                <!-- end row -->
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

