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
                $maintitle = "Silver Gold Rate PK";
                $title = "Show Report By Day";
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
                                                <th>Meta title</th>
                                                <th>Meta words</th>
                                                <th>Meta description</th>
                                                <th>Title</th>
                                                <th>slug</th>
                                                <th>Description</th>
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
                    url: "{{ route('show-report-by-day') }}",
                    type: "GET",
                    dataType: "json",
                },
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'meta_title', name: 'meta_title' },
                    { data: 'meta_description', name: 'meta_description' },
                    { data: 'meta_keyword', name: 'meta_keyword' },
                    {data: 'title', name: 'title'},
                    {data: 'slug', name: 'slug'},
                    {data: 'description_short', name: 'description_short'},
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
                url: "{{ route('del-report-by-day') }}",
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
