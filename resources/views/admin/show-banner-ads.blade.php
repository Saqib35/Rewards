@extends('admin.layouts.master')

@section('css')

   
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
                $maintitle = "TheOneStepRewards";
                $title = "Show Banner Ads";
                ?>
                @include ('admin.layouts.breadcrumb')
                <!-- end page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table align-middle table-nowrap" id="users-table">
                                        <thead>
                                            <tr>
                                        
                                                <th>#</th>
                                                <th>Display Count</th>
                                                <!--<th>Title</th>-->
                                                <!--<th>Link</th>-->
                                                <!--<th>Start Date</th>-->
                                                <!--<th>End Date</th>-->
                                                <!--<th>Location Pin/Address</th>-->
                                                <!--<th>Contact Number</th>-->
                                                <!--<th>WhatApp Number</th>-->
                                                <!--<th>Services List</th>-->
                                                <th>Created At</th>
                                                <th>Img</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>

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

<script>
    


            $(document).ready(function() {
            $('#users-table').DataTable({
                // serverSide: true,
                // processing: true,
                ajax: {
                    url: "{{ route('show-banner-ads') }}",
                    type: "GET",
                    dataType: "json",
                },
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'display_count', name: 'display_count' },
                    // { data: 'title', name: 'title' },
                    // { data: 'link', name: 'link' },
                    // {data: 'start_date', name: 'start_date'},
                    // {data: 'end_date', name: 'end_date'},
                    // {data: 'location_pin', name: 'location_pin'},
                    // {data: 'contact_number', name: 'contact_number'},
                    // {data: 'whatsapp_number', name: 'whatsapp_number'},
                    // {data: 'services_list', name: 'services_list'},
                    {data: 'created_at', name: 'created_at'},
                    {data: 'img', name: 'img'},
                    {data: 'action', name: 'action' , orderable: false, searchable: false}   

                ],
                order: [0, 'desc'],
            });
        });


        function delscholarship(id){
            var buttonId = 'delscholarship' + id;
             $('#' + buttonId).closest('tr').remove();
             
              $.ajax({
                url: "{{ route('del-banners-ads') }}",
                type: "GET",
                data: {
                    // Include any data you want to send to the server
                    id: id, 
                },
                dataType: "json",
                success: function(response) {
                    // Handle the response from the server
                   
                    if(response.success==true){
                        toastr.success('Deleted Successfully', 'success');
                    }else if(response.success==false){
                        toastr.error('Something went wrong', 'error');
                    }else{
                        toastr.error('Something went wrong', 'error');
                    }
            
                },
                error: function(xhr, status, error) {
            
                toastr.error('Something went wrong', 'error');

                }
            });
            


         } 

    </script>
@endsection
