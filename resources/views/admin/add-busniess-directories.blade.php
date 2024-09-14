@extends('admin.layouts.master')

@section('css')

  <script src="https://cdn.ckeditor.com/4.17.1/full-all/ckeditor.js"></script> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
<style>
    .cke_notification_warning{
        display:none !important;
    }
</style>
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
                $maintitle = "Banner Ads";
                $title = "Add banner Ads Load";
                ?>
                
                @include ('admin.layouts.breadcrumb')
                <!-- end page title -->


                <div class="row">
                    <div class="col-12">
                        @if(session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                       @if(session('error'))
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        @endif

                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title mb-0">Fill All Feild</h4>
                            </div>
                            <div class="card-body">
                                <form action="{{ url('add-business-load') }}" enctype='multipart/form-data' method="post" id="myForm" class="drozone">
                                 @csrf
                                 
                                       <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="company_name">Company Name</label>
                                                <input id="company_name" required="" name="company_name" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                       
                                          <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="address">Location Pin</label>
                                                <input id="address" required="" name="address" type="text" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                          <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="whatapp_number">Whatapp Number</label>
                                                <input id="whatapp_number" required="" name="whatapp_number" type="text" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                        
                                          <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="phone_number">Contact Number</label>
                                                <input id="phone_number" required="" name="phone_number" type="text" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                         <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="Img">Img</label>
                                                <input id="Img"  name="Img" required="" type="file" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                        
                                        <div class="col-md-12">
                                                <div class="mb-3">
                                                    <label for="services_list">Services List</label>
                                                    <div id="services_container">
                                                        <input id="services_list" required="" name="services_list[]" type="text" class="form-control mb-2" placeholder="Enter service">
                                                    </div>
                                                    <button type="button" id="add_service" class="btn btn-primary">Add Another Service</button>
                                                </div>
                                        </div>
                                        
                                 

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="email_address">Email Address</label>
                                                <input id="email_address" required="" name="email_address" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="website_address">Website Address</label>
                                                <input id="website_address" required="" name="website_address" type="text" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                         <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="facebbook_page_url">Facebook page Url</label>
                                                <input id="facebbook_page_url" required="" name="facebbook_page_url" type="text" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                          
                                       <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="start_date">Start Date</label>
                                                <input id="start_date" required="" name="start_date" type="date" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                         <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="end_date">End Date</label>
                                                <input id="end_date" required="" name="end_date" type="date" class="form-control">
                                            </div>
                                            
                                        </div>
                                        
                                        
                                       

                                     
                                    <div class="d-flex flex-wrap gap-2">
                                        <button type="submit" name="add-category" class="btn btn-primary waves-effect waves-light">Save Changes</button>
                                    </div>
                                </form>
                            </div>
                        </div> <!-- end card-->
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


<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
    document.getElementById('add_service').addEventListener('click', function() {
        var newInput = document.createElement('input');
        newInput.setAttribute('name', 'services_list[]');
        newInput.setAttribute('type', 'text');
        newInput.setAttribute('class', 'form-control mb-2');
        newInput.setAttribute('placeholder', 'Enter service');
        document.getElementById('services_container').appendChild(newInput);
    });
</script>
<script>
  
    CKEDITOR.replace('editor1', {
        filebrowserUploadUrl: "{{route('upload', ['_token' => csrf_token() ])}}",
        filebrowserUploadMethod: 'form'
        
    });

    $(document).ready(function() {
        $('#countrySelect').select2();
    });

</script>

@endsection

