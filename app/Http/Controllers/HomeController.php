<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Response;
use Illuminate\Http\Request;
use DB;
use App\Models\HomePage;
use App\Models\GoldRateByMonth;
use App\Models\GoldRateByWeek;
use App\Models\GoldRateByDay;
use App\Models\UpdatedPrice;
use App\Models\WebStory;
use App\Models\Blogs;

use App\Models\HomePageGoldRate;
use Carbon\Carbon;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

   

     public function contact(REQUEST $request)
     {
            $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        }
         return view('contact-us');
         
 
     }

     public function privacyPolicy(REQUEST $request)
     {
            $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        return view('privacy-policy');

     }

     public function termCondition(REQUEST $request)
     {
             $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        return view('terms-and-conditions');
     }

     public function ShowAuthor(REQUEST $request)
     {
             $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
          
          $posts =GoldRateByDay::orderBy('created_at', 'desc')->get();
         
          return view('all-posts' ,['posts'=>$posts]);
 
 
     }


    public function index(REQUEST $request)
    {
        
        
        $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        }
        
        
        
        if($request->s)
        {
            $posts =GoldRateByDay::where('title', 'LIKE', "%$request->s%")->orderBy('created_at', 'desc')->get();
            return view('search-page' ,['posts'=>$posts]);
        }

        $home_content=HomePage::first();
        return view('index',['home_content' => $home_content]);
        
       
    }

    public function ShowFeed(REQUEST $request)
    {
          
           $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
         $posts =GoldRateByDay::orderBy('created_at', 'desc')->get();
        
         return response()->view('rss', [
             'posts' => $posts
         ])->header('Content-Type', 'text/xml');


    }

    public function WebStories(REQUEST $request)
    {
          $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        if(!empty($request->slug))
        {
            
            $webStory=WebStory::where('slug', $request->slug)->first();
            return view('web-stories-details',['webStory'=>$webStory]);
        }

        $webStory=WebStory::orderBy('created_at', 'desc')->get();
        return view('web-stories',['webStory'=>$webStory]);
    }

    public function HistorialGoldRate(REQUEST $request){

    $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        $posts =GoldRateByDay::orderBy('created_at', 'desc')->get();
        return view('historial-gold-rate',['posts'=>$posts]);

    }


    public function GoldCalculator(REQUEST $request)
    {
        
         $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        return view('gold-calculator');
     
    }


    public function GoldPriceByMonth(REQUEST $request)
    {
            $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        $GoldRateByMonth=GoldRateByMonth::get();
        return view('gold-price-by-month' ,['GoldRateByMonth'=>$GoldRateByMonth]);
    }


        
        public function allBlogs(REQUEST $request)
        {
                $currentUrl = $request->url();

            if (strpos($currentUrl, '/public') !== false) {
            
                return redirect(str_replace('/public', '', $currentUrl));
            } 
            $Blogs=Blogs::get();
            return view('all-blogs' ,['Blogs'=>$Blogs]);
        }




      public function GoldPriceByMonthDetail(REQUEST $request)
     {
            $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
        
        $GoldRateByMonth=GoldRateByMonth::where('slug',$request->slug)->first();
        if($GoldRateByMonth)
        {
           $goldPriceHistoryString = $GoldRateByMonth->slug;
           // Split the string by "-"
           $priceSegments = explode('-', $goldPriceHistoryString);
           // Get the second-to-last value
           $secondToLastValue = isset($priceSegments[count($priceSegments) - 2]) ? $priceSegments[count($priceSegments) - 2] : null;
        
           $year = end($priceSegments);
           // Create Carbon instances for the start and end of the month
           $startDate = Carbon::createFromDate($year, Carbon::parse($secondToLastValue)->month, 1)->startOfMonth();
           $endDate = Carbon::createFromDate($year, Carbon::parse($secondToLastValue)->month, 1)->endOfMonth();
          $GoldRateByDay=GoldRateByDay::whereBetween('created_at', [$startDate, $endDate])->get();

          return view('gold-price-by-month-single-detail' ,['GoldRateByMonth'=>$GoldRateByMonth,'GoldRateByDay'=>$GoldRateByDay,'secondToLastValue'=>$secondToLastValue]);

        }

        $GoldRateByWeek=GoldRateByWeek::where('slug',$request->slug)->first();
        if($GoldRateByWeek)
        {
          $goldPriceHistoryString = $GoldRateByWeek->slug;
          preg_match('/(\d+)-to-(\d+)-([a-zA-Z]+)-(\d+)/', $goldPriceHistoryString, $matches);
          list(, $startDay, $endDay, $month, $year) = $matches;
          // Create Carbon instances for the start and end dates
          $startDate = Carbon::createFromDate($year, Carbon::parse($month)->month, $startDay)->startOfDay();
          $endDate = Carbon::createFromDate($year, Carbon::parse($month)->month, $endDay)->endOfDay();
          $GoldRateByDay=GoldRateByDay::whereBetween('created_at', [$startDate, $endDate])->get();

          return view('gold-price-by-week-single-detail' ,['GoldRateByWeek'=>$GoldRateByWeek,'GoldRateByDay'=>$GoldRateByDay]);

        }
      
        $GoldRateByDay=GoldRateByDay::where('slug',$request->slug)->first();
        if($GoldRateByDay)
        {
          return view('gold-price-by-day-single-detail' ,['GoldRateByDay'=>$GoldRateByDay]);

        }


        $Blogs=Blogs::where('slug',$request->slug)->first();
        if($Blogs)
        {
            
       
            
            $rates = $this->calculateRates();
            $rates22k = $this->calculateRates22K();
            $rates21k = $this->calculateRates21K();
            $rates20k = $this->calculateRates20K();
            $rates18k = $this->calculateRates18K();
            $table_all_type = $this->generateTable();
            $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
            
            
          return view('blog-single-detail' ,['GoldRateByDay'=>$Blogs,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k]);

        }


        return abort(404);

     }

     public function calculateRates()
     {
        $price=UpdatedPrice::first();
        $pricePerTola =$price->kerat24k; // Rate for one tola in Rupees
        $gramsPerTola = 11.66; // Grams in one tola
        $gramsPerTroyOunce = 31.1035; // Grams in one Troy ounce
        $gramsPerKilogram = 1000; // Grams in one kilogram
        
        // Calculate rates
        $ratePerGram = $pricePerTola / $gramsPerTola;
        $ratePer10Grams = $ratePerGram * 10;
        $ratePerTola = $ratePerGram * $gramsPerTola;
        $ratePerKilogram = $ratePerGram * $gramsPerKilogram ;
        $ratePerTroyOunce = $ratePerGram * $gramsPerTroyOunce;
 
         // Return an array of calculated rates
         return [
             'ratePerGram' => number_format($ratePerGram, 0),
             'ratePer10Grams' => number_format($ratePer10Grams, 0),
             'ratePerTola' => number_format($ratePerTola, 0),
             'ratePerKilogram' => number_format($ratePerKilogram, 0),
             'ratePerTroyOunce' => number_format($ratePerTroyOunce, 0),
         ];
     }


     public function calculateRates22K()
     {
        $price=UpdatedPrice::first();
        $pricePerTola =$price->kerat22k; // Rate for one tola in Rupees
        $gramsPerTola = 11.66; // Grams in one tola
        $gramsPerTroyOunce = 31.1035; // Grams in one Troy ounce
        $gramsPerKilogram = 1000; // Grams in one kilogram
        
        // Calculate rates
        $ratePerGram = $pricePerTola / $gramsPerTola;
        $ratePer10Grams = $ratePerGram * 10;
        $ratePerTola = $ratePerGram * $gramsPerTola;
        $ratePerKilogram = $ratePerGram * $gramsPerKilogram ;
        $ratePerTroyOunce = $ratePerGram * $gramsPerTroyOunce;
 
         // Return an array of calculated rates
         return [
             'ratePerGram' => number_format($ratePerGram, 0),
             'ratePer10Grams' => number_format($ratePer10Grams, 0),
             'ratePerTola' => number_format($ratePerTola, 0),
             'ratePerKilogram' => number_format($ratePerKilogram, 0),
             'ratePerTroyOunce' => number_format($ratePerTroyOunce, 0),
         ];
     }


     public function calculateRates21K()
     {
        $price=UpdatedPrice::first();
        $pricePerTola =$price->kerat21k; // Rate for one tola in Rupees
        $gramsPerTola = 11.66; // Grams in one tola
        $gramsPerTroyOunce = 31.1035; // Grams in one Troy ounce
        $gramsPerKilogram = 1000; // Grams in one kilogram
        
        // Calculate rates
        $ratePerGram = $pricePerTola / $gramsPerTola;
        $ratePer10Grams = $ratePerGram * 10;
        $ratePerTola = $ratePerGram * $gramsPerTola;
        $ratePerKilogram = $ratePerGram * $gramsPerKilogram ;
        $ratePerTroyOunce = $ratePerGram * $gramsPerTroyOunce;
 
         // Return an array of calculated rates
         return [
             'ratePerGram' => number_format($ratePerGram, 0),
             'ratePer10Grams' => number_format($ratePer10Grams, 0),
             'ratePerTola' => number_format($ratePerTola, 0),
             'ratePerKilogram' => number_format($ratePerKilogram, 0),
             'ratePerTroyOunce' => number_format($ratePerTroyOunce, 0),
         ];
     }

     public function calculateRates20K()
     {
        $price=UpdatedPrice::first();
        $pricePerTola =$price->kerat20k; // Rate for one tola in Rupees
        $gramsPerTola = 11.66; // Grams in one tola
        $gramsPerTroyOunce = 31.1035; // Grams in one Troy ounce
        $gramsPerKilogram = 1000; // Grams in one kilogram
        
        // Calculate rates
        $ratePerGram = $pricePerTola / $gramsPerTola;
        $ratePer10Grams = $ratePerGram * 10;
        $ratePerTola = $ratePerGram * $gramsPerTola;
        $ratePerKilogram = $ratePerGram * $gramsPerKilogram ;
        $ratePerTroyOunce = $ratePerGram * $gramsPerTroyOunce;
 
         // Return an array of calculated rates
         return [
             'ratePerGram' => number_format($ratePerGram, 0),
             'ratePer10Grams' => number_format($ratePer10Grams, 0),
             'ratePerTola' => number_format($ratePerTola, 0),
             'ratePerKilogram' => number_format($ratePerKilogram, 0),
             'ratePerTroyOunce' => number_format($ratePerTroyOunce, 0),
         ];
     }

     public function calculateRates18K()
     {
        $price=UpdatedPrice::first();
        $pricePerTola =$price->kerat18k; // Rate for one tola in Rupees
        $gramsPerTola = 11.66; // Grams in one tola
        $gramsPerTroyOunce = 31.1035; // Grams in one Troy ounce
        $gramsPerKilogram = 1000; // Grams in one kilogram
        
        // Calculate rates
        $ratePerGram = $pricePerTola / $gramsPerTola;
        $ratePer10Grams = $ratePerGram * 10;
        $ratePerTola = $ratePerGram * $gramsPerTola;
        $ratePerKilogram = $ratePerGram * $gramsPerKilogram ;
        $ratePerTroyOunce = $ratePerGram * $gramsPerTroyOunce;
 
         // Return an array of calculated rates
         return [
             'ratePerGram' => number_format($ratePerGram, 0),
             'ratePer10Grams' => number_format($ratePer10Grams, 0),
             'ratePerTola' => number_format($ratePerTola, 0),
             'ratePerKilogram' => number_format($ratePerKilogram, 0),
             'ratePerTroyOunce' => number_format($ratePerTroyOunce, 0),
         ];
     }

     public function GoldPriceByWeek(REQUEST $request)
     {
             $currentUrl = $request->url();

        if (strpos($currentUrl, '/public') !== false) {
          
            return redirect(str_replace('/public', '', $currentUrl));
        } 
         $GoldRateByWeek=GoldRateByWeek::get();
         return view('gold-price-by-week' ,['GoldRateByWeek'=>$GoldRateByWeek]);
     }
    
     public function GoldPrice(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     
          public function GoldPriceKarachi(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price-karachi',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     



     public function GoldPriceFaisalabad(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price-faisalabad',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     


     
     public function GoldPricelahore(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price-lahore',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     

     
     public function GoldPriceMultan(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price-multan',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     

     
     public function GoldPriceIslamabad(REQUEST $request)
     {
         
       $currentUrl = $request->url();
        
        // Check for '/public' in the URL
        if (strpos($currentUrl, '/public') !== false) {
            // Remove trailing slash and perform a 301 redirect
            if (rtrim($currentUrl, '/') !== $currentUrl) {
                return redirect()->to(rtrim($currentUrl, '/'), 301);
            } else {
                // Remove '/public' and perform a redirect
                return redirect(str_replace('/public', '', $currentUrl));
            }
        }
        
        // Check for a trailing slash and perform a 301 redirect
        if (rtrim($currentUrl, '/') !== $currentUrl) {
            return redirect()->to(rtrim($currentUrl, '/'), 301);
        }

        
        $HomePageGoldRate=HomePageGoldRate::first();
        $GoldRateByDay=GoldRateByDay::orderBy('created_at', 'desc')->get();
        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();
        $table_all_type = $this->generateTable();
        $table_Second_Table_24k_And_22k = $this->generateSecondTable24kAnd22k();
        $updatedPrice=UpdatedPrice::first();

        return view('today-gold-price-islamabad',['HomePageGoldRate'=>$HomePageGoldRate,'GoldRateByDay'=>$GoldRateByDay,'table_all_type'=>$table_all_type,'table_Second_Table_24k_And_22k'=>$table_Second_Table_24k_And_22k,'rates'=>$rates,'rates22k'=>$rates22k,'rates21k'=>$rates21k,'rates20k'=>$rates20k,'rates18k'=>$rates18k,'updatedPrice'=> $updatedPrice]);
     }
     

    //    contact us controller
    
    private function generateTable()
    {

        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
        $rates21k = $this->calculateRates21K();
        $rates20k = $this->calculateRates20K();
        $rates18k = $this->calculateRates18K();


       

        return '<div class="table-responsive"><table border="1" cellpadding="1" cellspacing="1" style="width:100%" class="table table-bordered table-hover">
        <thead>
            <tr>
                <th class="theadClor">Gold Type</th>
                <th class="theadClor">Rate per Gram</th>
                <th class="theadClor">Rate per 10 Grams</th>
                <th class="theadClor">Rate per Tola</th>
                <th class="theadClor">Rate per Troy Ounce</th>
                <th class="theadClor">Rate per Kilogram</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-center">24K</td>
                <td class="text-center">'.$rates["ratePerGram"].'</td>
                <td class="text-center">'.$rates["ratePer10Grams"].'</td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates["ratePerTroyOunce"].'</td>
                <td class="text-center">'.$rates["ratePerKilogram"].'</td>
            </tr>
            <tr>
                <td class="text-center">22K</td>
                <td class="text-center">'.$rates22k["ratePerGram"].'</td>
                <td class="text-center">'.$rates22k["ratePer10Grams"].'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'  </td>
                <td class="text-center">'.$rates22k["ratePerTroyOunce"].'</td>
                <td class="text-center">'.$rates22k["ratePerKilogram"].'</td>
            </tr>
            <tr>
                <td class="text-center">21K</td>
                <td class="text-center">'.$rates21k["ratePerGram"].'</td>
                <td class="text-center">'.$rates21k["ratePer10Grams"].'</td>
                <td class="text-center">'.$rates21k["ratePerTola"].'</td>
                <td class="text-center">'.$rates21k["ratePerTroyOunce"].'</td>
                <td class="text-center">'.$rates21k["ratePerKilogram"].'</td>
            </tr>
            <tr>
                <td class="text-center">20K</td>
                <td class="text-center">'.$rates20k["ratePerGram"].'</td>
                <td class="text-center">'.$rates20k["ratePer10Grams"].'</td>
                <td class="text-center">'.$rates20k["ratePerTola"].'</td>
                <td class="text-center">'.$rates20k["ratePerTroyOunce"].'</td>
                <td class="text-center">'.$rates20k["ratePerKilogram"].'</td>
            </tr>
            <tr>
                <td class="text-center">18K</td>
                <td class="text-center">'.$rates18k["ratePerGram"].'</td>
                <td class="text-center">'.$rates18k["ratePer10Grams"].'</td>
                <td class="text-center">'.$rates18k["ratePerTola"].'</td>
                <td class="text-center">'.$rates18k["ratePerTroyOunce"].'</td>
                <td class="text-center">'.$rates18k["ratePerKilogram"].'</td>
            </tr>
        </tbody>
    </table></div>';
    }

    
    private function generateSecondTable24kAnd22k()
    {

        $rates = $this->calculateRates();
        $rates22k = $this->calculateRates22K();
   


       

        return '<table border="1" cellpadding="1" cellspacing="1" style="width:100%">
        <thead>
            <tr>
                <th scope="col">City</th>
                <th scope="col">24K Rate per Tola</th>
                <th scope="col">22K Rate per Tola</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-center">Hyderabad</td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center" ><a href="https://silvergoldrate.pk/gold-rate-in-lahore">Lahore</a></td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center"><a href="https://silvergoldrate.pk/gold-rate-in-multan">Multan</a></td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center"><a href="https://silvergoldrate.pk/gold-rate-in-islamabad">Islamabad</a></td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center"><a href="https://silvergoldrate.pk/gold-rate-in-faisalabad">Faisalabad</a></td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center">Rawalpindi</td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center">Quetta</td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
            <tr>
                <td class="text-center"><a href="https://silvergoldrate.pk/gold-rate-in-karachi">Karachi</a></td>
                <td class="text-center">'.$rates["ratePerTola"] .'</td>
                <td class="text-center">'.$rates22k["ratePerTola"].'</td>
            </tr>
        </tbody>
    </table>
    ';
    }

}
