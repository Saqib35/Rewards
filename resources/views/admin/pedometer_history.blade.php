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
                        @if(session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif


                            <div class="card">
                                <!--<div class="card-header text-center bg-primary text-white">-->
                                <!--    <h2>Pedometer History</h2>-->
                                <!--</div>-->
                                <div class="card-body">
                                    <!-- Display Total Steps Today -->
                                    <div class="row mb-4">
                                        <div class="col text-center">
                                            <h4>Total Steps Today</h4>
                                            <p class="font-weight-bold">{{ $today_daily_steps }}</p>
                                        </div>
                                        <div class="col text-center">
                                            <h4>Total Steps for All Days</h4>
                                            <p class="font-weight-bold">{{ $total_step_all_days }}</p>
                                        </div>
                                    </div>
                            
                                    <!-- Display History Table -->
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>Date</th>
                                                    <th>Total Steps</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($history as $record)
                                                <tr>
                                                    <td>{{ $record->date }}</td>
                                                    <td>{{ $record->total_steps }}</td>
                                                </tr>
                                                
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                            
                                    <!-- No History Message -->
                                    @if($history->isEmpty())
                                        <p class="text-center">No history available.</p>
                                    @endif
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

