<!doctype html>
<html lang="en">
<head>

    <title>TheStepRewards.com | Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- App favicon -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" href="{{ asset('public/assets/favicon.png')}}">
    <link href="{{ asset('public/admin/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css')}}" rel="stylesheet" type="text/css" />
    <!-- preloader css -->
    <link rel="stylesheet" href="{{ asset('public/admin/assets/css/preloader.min.css')}}" type="text/css" />
    <!-- Bootstrap Css -->
    <link href="{{ asset('public/admin/assets/css/bootstrap.min.css')}}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('public/admin/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('public/admin/assets/css/app.min.css')}}" id="app-style" rel="stylesheet" type="text/css" />
   
    <style>
     .header-profile-user {
       background-color: black !important;
      }
    </style>
    @yield('css')


</head>
<body >  


     @yield('main')




    @include ('admin.layouts.right-sidebar')
    

    <script src="{{ asset('public/admin/assets/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/metismenu/metisMenu.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/node-waves/waves.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/feather-icons/feather.min.js')}}"></script>
    <!-- pace js -->
    <script src="{{ asset('public/admin/assets/libs/pace-js/pace.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/js/app.js')}}"></script>
    <!-- apexcharts -->
    <script src="{{ asset('public/admin/assets/libs/apexcharts/apexcharts.min.js')}}"></script>
    <!-- Plugins js-->
    <script src="{{ asset('public/admin/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
    <script src="{{ asset('public/admin/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js')}}"></script>
    <!-- dashboard init -->
    <script src="{{ asset('public/admin/assets/js/pages/dashboard.init.js')}}"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script>
        
        toastr.options = {
        closeButton: true,
        progressBar: true,
        positionClass: 'toast-top-right'
        };

    </script>
    <link rel="stylesheet" href="//cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">
    <script src="//cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
     @yield('js')
   

</body>
</html> 



    
