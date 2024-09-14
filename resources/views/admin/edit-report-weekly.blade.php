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
                $maintitle = "Silver Gold Rate PK";
                $title = "Edit Report By Weekly";
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


                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title mb-0">Fill All Feild</h4>
                            </div>
                            <div class="card-body">
                                <form action="{{ url('add-rate-report-by-week-update') }}" enctype='multipart/form-data' method="post" id="myForm" class="drozone">
                                 @csrf
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaTitle">Meta Title</label>
                                                <input id="metaTitle" value="{{ $GoldRateByWeek->meta_title }}" required="" name="meta_title" type="text" class="form-control">
                                            </div>
                                            <input  value="{{ $GoldRateByWeek->id }}" required="" name="id" type="hidden" class="form-control">
                                            
                                        </div>

                                        

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaDescription">Meta Description</label>
                                                <input id="metaDescription" value="{{ $GoldRateByWeek->meta_description }}" required="" name="meta_description" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaKeyword">Meta Keyworld</label>
                                                <input id="metaKeyword" value="{{ $GoldRateByWeek->meta_keyword }}" required="" name="meta_keyword" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                    

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="title">Name Title</label>
                                                <input id="title" value="{{ $GoldRateByWeek->title }}"   required="" name="title" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="slug">Slug</label>
                                                <input id="slug"  value="{{ $GoldRateByWeek->slug }}"  required="" name="slug" type="text" class="form-control">
                                            </div>
                                        </div>

                                       

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="decription">Description Short</label>
                                                <input id="decription" value="{{ $GoldRateByWeek->description_short }}"  required="" name="description_short" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="Img">Img</label>
                                                <input id="Img" name="Img" type="file" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="alt_tag">IMG Alt Tag</label>
                                                <input id="alt_tag" required="" value="{{ $GoldRateByWeek->alt_tag }}" name="alt_tag" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                     

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="editor1">Details</label>
                                                <textarea name="content" id="editor1" class="form-control">{{ $GoldRateByWeek->details }}</textarea>
                                            </div>
                                        </div>
                                        <!-- <div class="col-md-12">
                                            <div class="mb-3">
                                                <textarea name="schema_week" required=""  class="form-control" style="height:1000px">{{ $GoldRateByWeek->schema_week }}</textarea>
                                              
                                                </div>
                                        </div> -->
                                    <br>
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
  
    CKEDITOR.replace('editor1', {
        filebrowserUploadUrl: "{{route('upload', ['_token' => csrf_token() ])}}",
        filebrowserUploadMethod: 'form'
        
    });

    $(document).ready(function() {
        $('#countrySelect').select2();
    });

</script>

@endsection

