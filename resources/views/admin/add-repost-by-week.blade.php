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
                $title = "Add Report By Week";
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
                                <form action="{{ url('add-rate-report-by-week') }}" enctype='multipart/form-data' method="post" id="myForm" class="drozone">
                                 @csrf
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaTitle">Meta Title</label>
                                                <input id="metaTitle" required="" name="meta_title" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaDescription">Meta Description</label>
                                                <input id="metaDescription" required="" name="meta_description" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="metaKeyword">Meta Keyworld</label>
                                                <input id="metaKeyword" required="" name="meta_keyword" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                    

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="title">Name Title</label>
                                                <input id="title"  required="" name="title" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="slug">Slug</label>
                                                <input id="slug"  required="" name="slug" type="text" class="form-control">
                                            </div>
                                        </div>

                                       

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="decription">Description Short</label>
                                                <input id="decription" required="" name="description_short" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                        
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="Img">Img</label>
                                                <input id="Img"  name="Img" type="file" class="form-control">
                                            </div>
                                            
                                        </div>

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="alt_tag">IMG Alt Tag</label>
                                                <input id="alt_tag" required="" name="alt_tag" type="text" class="form-control">
                                            </div>
                                            
                                        </div>

                                     

                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label for="editor1">Details</label>
                                                <textarea name="content" id="editor1" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        
                                        <!-- <div class="col-md-12">
                                            <div class="mb-3">
                                                <textarea name="schema_week" required=""  class="form-control" style="height:1000px">
                                                <script type="application/ld+json">
            {
                "@context": "https://schema.org",
                "@graph": [
                    { "@type": ["Person", "Organization"], "@id": "https://silverrate.pk/#person", "name": "Staff" },
                    {
                        "@type": "WebSite",
                        "@id": "https://silverrate.pk/#website",
                        "url": "https://silverrate.pk",
                        "name": "Gold and Silver Rate in Pakistan",
                        "alternateName": "Gold Price in Pakistan",
                        "publisher": { "@id": "https://silverrate.pk/#person" },
                        "inLanguage": "en-US"
                    },
                    {
                        "@type": "ImageObject",
                        "@id": "https://silverrate.pk/wp-content/uploads/2023/10/weekly-gold-rate-update-by-silverrate.pk_.webp",
                        "url": "https://silverrate.pk/wp-content/uploads/2023/10/weekly-gold-rate-update-by-silverrate.pk_.webp",
                        "width": "1280",
                        "height": "720",
                        "caption": "weekly gold rate update by silverrate.pk",
                        "inLanguage": "en-US"
                    },
                    {
                        "@type": "WebPage",
                        "@id": "https://silverrate.pk/gold-price-history-by-week-13-to-18-november-2023/#webpage",
                        "url": "https://silverrate.pk/gold-price-history-by-week-13-to-18-november-2023/",
                        "name": "Gold Price History by Week- 13 to 18 November 2023",
                        "datePublished": "2023-11-22T08:49:53+05:00",
                        "dateModified": "2023-11-22T08:49:56+05:00",
                        "isPartOf": { "@id": "https://silverrate.pk/#website" },
                        "primaryImageOfPage": { "@id": "https://silverrate.pk/wp-content/uploads/2023/10/weekly-gold-rate-update-by-silverrate.pk_.webp" },
                        "inLanguage": "en-US"
                    },
                    {
                        "@type": "Person",
                        "@id": "https://silverrate.pk/author/staff/",
                        "name": "Staff",
                        "url": "https://silverrate.pk/author/staff/",
                        "image": {
                            "@type": "ImageObject",
                            "@id": "https://silverrate.pk/wp-content/litespeed/avatar/6680d1529f831ca8b9805a104f888d29.jpg?ver=1701930791",
                            "url": "https://silverrate.pk/wp-content/litespeed/avatar/6680d1529f831ca8b9805a104f888d29.jpg?ver=1701930791",
                            "caption": "Staff",
                            "inLanguage": "en-US"
                        },
                        "sameAs": ["http://silverrate.pk", "#", "https://twitter.com/#"]
                    },
                    {
                        "@type": "NewsArticle",
                        "headline": "Gold Price History by Week- 13 to 18 November 2023",
                        "datePublished": "2023-11-22T08:49:53+05:00",
                        "dateModified": "2023-11-22T08:49:56+05:00",
                        "articleSection": "Gold Price History by Week",
                        "author": { "@id": "https://silverrate.pk/author/staff/", "name": "Staff" },
                        "publisher": { "@id": "https://silverrate.pk/#person" },
                        "description": "In this article, we will take a closer look at the gold price trends in Pakistan for the past week 6 to 11 November 2023, and analyze the key data points.",
                        "name": "Gold Price History by Week- 13 to 18 November 2023",
                        "@id": "https://silverrate.pk/gold-price-history-by-week-13-to-18-november-2023/#richSnippet",
                        "isPartOf": { "@id": "https://silverrate.pk/gold-price-history-by-week-13-to-18-november-2023/#webpage" },
                        "image": { "@id": "https://silverrate.pk/wp-content/uploads/2023/10/weekly-gold-rate-update-by-silverrate.pk_.webp" },
                        "inLanguage": "en-US",
                        "mainEntityOfPage": { "@id": "https://silverrate.pk/gold-price-history-by-week-13-to-18-november-2023/#webpage" }
                    }
                ]
            }
        </script>
                                                </textarea>
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

