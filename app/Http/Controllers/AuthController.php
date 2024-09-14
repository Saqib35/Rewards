<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator; // Import Validator
use App\Models\User;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;


class AuthController extends Controller
{
    public function register(Request $request)
    {
      
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'password' => 'required|string|min:6',
            ]);
    
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }
    
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);
    
            return response()->json(['message' => 'Successfully Register'], 201);
           
    }


    public function login(Request $request)
    {
     
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid credentials','token' => ''], 401);
        }

        $user = Auth::user();

        // Revoke all previous tokens
        DB::table('personal_access_tokens')
        ->where('tokenable_id', $user->id)
        ->delete();
        
        $tokenResult = $user->createToken('API Token');
        $token = $tokenResult->plainTextToken;

        $expiration = Carbon::now()->addDay(); // 1 day from now


        //   Update the expiration time in the token record
         DB::table('personal_access_tokens')
        ->where('id',$tokenResult->accessToken->id)
        ->update(['expires_at' => $expiration]);
        
        

         if ($token) {
            return response()->json(['success'=>'success','token' => $token], 200);
         }
         
         return response()->json(['error' => 'Token creation failed'], 500);
            
    }
    
    
    public function updatepassword(Request $request)
    {
        
     
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email|exists:users',
            'password' => 'required|string|min:6',
        ]);
    
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
    
        $user = User::where('email', $request->email)->first();
        $user->password = Hash::make($request->password);
        $user->save();
    
        return response()->json(['message' => 'Password updated successfully']);
    }



    public function getUserDetails(Request $request)
    {
        // Get the authenticated user based on the token
        $authenticatedUser = Auth::user();

        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // Get the authenticated user's ID
        $userId = $authenticatedUser->id;

        // Find the user by the authenticated user's ID
        $user = User::find($userId);

        // If the user is not found, return an error response
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }

        // Return the user details in the response
        return response()->json([
            'status' => 'success',
            'user' => $user
        ], 200);
    }
     
     
   
    public function updatePadometerStep(Request $request)
    {
        // Get the authenticated user based on the token
        $authenticatedUser = Auth::user();

        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // Validate the incoming request (for the step count)
        $validator = Validator::make($request->all(), [
            'padometer_total_step' => 'required|integer|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Get the authenticated user's ID
        $userId = $authenticatedUser->id;

        // Get today's date
        $today = Carbon::now()->toDateString();

        // Check if a record for today already exists using a DB query
        $dailyRecord = DB::table('daily_step_histories')
            ->where('user_id', $userId)
            ->where('date', $today)
            ->first();

        if ($dailyRecord) {
            // If the record exists, update the total_steps
            $totalSteps = $dailyRecord->total_steps + $request->input('padometer_total_step');

            // Update the existing record
            DB::table('daily_step_histories')
                ->where('id', $dailyRecord->id)
                ->update(['total_steps' => $totalSteps]);
        } else {
            // If no record exists, create a new one
            DB::table('daily_step_histories')->insert([
                'user_id' => $userId,
                'date' => $today,
                'total_steps' => $request->input('padometer_total_step'),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
        
          // Calculate the total steps from the daily step history
        $totalDailySteps = DB::table('daily_step_histories')
        ->where('user_id', $userId)
        ->sum('total_steps'); // Get the sum of total_steps for all historical records
            
            

        // Return the success message in the response
        return response()->json([
            'status' => 'success',
            'message' => 'Pedometer step updated successfully',
            'today_daily_steps' => $dailyRecord ? $totalSteps : $request->input('padometer_total_step'),
            'total_step_all_days' =>$totalDailySteps,
            'history' => DB::table('daily_step_histories')
                ->where('user_id', $userId)
                ->orderBy('date', 'desc')
                ->get(), // Get all historical data
        ], 200);
    }
    
     
   
    
     
     
     public function updateProfile(Request $request)
    {
        // Get the authenticated user based on the token
        $authenticatedUser = Auth::user();

        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // Validate the incoming request
        
         $validator = Validator::make($request->all(), [
            'name' => 'sometimes|string|max:255',
            'email' => [
                'sometimes',
                'email',
                'max:255',
                'unique:users,email,' . $authenticatedUser->id // Check uniqueness excluding the current user's email
            ],
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }


        // Update the user's profile information
        if ($request->has('name')) {
            $authenticatedUser->name = $request->input('name');
        }

        if ($request->has('email')) {
            $authenticatedUser->email = $request->input('email');
        }

        // Save the updated user details
        $authenticatedUser->save();

        // Return a success response
        return response()->json([
            'status' => 'success',
            'message' => 'Profile updated successfully',
            'user' => [
                'id' => $authenticatedUser->id,
                'name' => $authenticatedUser->name,
                'email' => $authenticatedUser->email,
            ],
        ], 200);
    }
     
    
    
     public function getUserVouchers(Request $request)
    {
        $authenticatedUser = Auth::user();
    
        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        
        // Get vouchers assigned to the user that have not been redeemed
        $userVouchers = DB::table('user_vouchers')
            ->join('vouchers', 'user_vouchers.voucher_id', '=', 'vouchers.id')
            ->where('user_vouchers.user_id', $authenticatedUser->id)
            ->whereNull('user_vouchers.redeemed_at') // Exclude redeemed vouchers
            ->select('vouchers.*', 'user_vouchers.created_at as assigned_at','user_vouchers.id as voucher_id')
            ->get();
    
        return response()->json([
            'status' => 'success',
            'vouchers' => $userVouchers,
        ], 200);
    }


    public function redeemVoucher(Request $request)
    {
        // Get the authenticated user
        $authenticatedUser = Auth::user();
    
        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
    
        // Validate the incoming request
         $validator = Validator::make($request->all(), [
            'voucher_id' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
    
        // Find the voucher by its code
        $voucher = DB::table('user_vouchers')->where('id', $request->voucher_id)->where('user_id',  $authenticatedUser->id)->first();
    
        // If the voucher does not exist, return an error response
        if (!$voucher) {
            return response()->json(['error' => 'Voucher not found'], 404);
        }
    
        // Check if the user has already redeemed this voucher
        $redeemedVoucher = DB::table('user_vouchers')
            ->where('user_id', $authenticatedUser->id)
            ->where('id',$request->voucher_id)
            ->first();
    
        if ($redeemedVoucher->redeemed_at == null) {
         
         $updated=DB::table('user_vouchers')
                ->where('id', $redeemedVoucher->id)
                ->update(['redeemed_at' => now()]);
    
            if ($updated) {
                return response()->json([
                    'status' => 'success',
                    'message' => 'Voucher redeemed successfully.',
                    'voucher' => $voucher,
                ], 200);
            } else {
                return response()->json(['error' => 'Failed to redeem the voucher'], 500);
            }
            
        } else {
            
               return response()->json([
                'status' => 'success',
                'message' => 'Voucher already redeemed.',
                'voucher' => $voucher,
            ], 200);
            
        }
    }



    public function getUserVouchersAlredyUsed(Request $request)
    {
        $authenticatedUser = Auth::user();
    
        // If there is no authenticated user, return an unauthorized response
        if (!$authenticatedUser) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        
          // Get vouchers assigned to the user that have been redeemed
         $userVouchers = DB::table('user_vouchers')
        ->join('vouchers', 'user_vouchers.voucher_id', '=', 'vouchers.id')
        ->where('user_vouchers.user_id', $authenticatedUser->id)
        ->whereNotNull('user_vouchers.redeemed_at') // Include only redeemed vouchers
        ->select('vouchers.*', 'user_vouchers.created_at as assigned_at', 'user_vouchers.id as voucher_id')
        ->get();

    
        return response()->json([
            'status' => 'success',
            'vouchers' => $userVouchers,
        ], 200);
    }

  
      
    public function showNextAd(Request $request)
    {
        // Get the current timestamp
        $now = now();
    
        // Fetch the ad to display
        $adToShow = DB::table('banner_ads')
            ->where('is_active', true)
            ->whereDate('start_date', '<=', $now)
            ->whereDate('end_date', '>=', $now)
            ->orderByRaw('display_count + (SELECT COALESCE(MAX(display_count), 0) FROM banner_ads) / (1 + LEAST(display_count, 5)) ASC')
            ->first();
    
        // If no ad is found, return a message
        if (!$adToShow) {
            return response()->json(['message' => 'No ads available'], 404);
        }
    
        // Increment the display count for the selected ad
        DB::table('banner_ads')
            ->where('id', $adToShow->id)
            ->increment('display_count');
    
        // Return the ad as JSON
        return response()->json($adToShow);
    }
  
    public function loadBusinessDirectory(Request $request)
    {
       // Get the current timestamp
        $now = now();
    
        // Fetch the ad to display based on the conditions
        $adToShow = DB::table('load_business_directory_ads')
            ->where('is_active', true)  // Only active ads
            ->whereDate('start_date', '<=', $now)  // Start date must be in the past or today
            ->whereDate('end_date', '>=', $now)  // End date must be in the future or today
            ->orderByRaw('display_count + (SELECT COALESCE(MAX(display_count), 0) FROM load_business_directory_ads) / (1 + LEAST(display_count, 5)) ASC')
            ->first();  // Fetch the first matching ad
    
        // If no ad is found, return a message
        if (!$adToShow) {
            return response()->json(['message' => 'No ads available'], 404);
        }
    
        // Increment the display count for the selected ad
        DB::table('load_business_directory_ads')
            ->where('id', $adToShow->id)
            ->increment('display_count');
    
        // Return the ad details as JSON
        return response()->json($adToShow);
    }
  
  
    
    // public function showNextAd(Request $request)
    // {
    //     // Fetch all active banner ads
    //     $allAds = BannerAd::where('is_active', true)
    //         ->whereDate('start_date', '<=', now())
    //         ->whereDate('end_date', '>=', now())
    //         ->orderBy('display_count', 'asc')
    //         ->get();
    
    //     // If there are no ads, return a message
    //     if ($allAds->isEmpty()) {
    //         return response()->json(['message' => 'No ads available'], 404);
    //     }
    
    //     // Sort ads by display_count and get the next ad to show
    //     $adToShow = $this->getNextAdToShow($allAds);
    
    //     // Increment the display count for the selected ad
    //     $adToShow->increment('display_count');
    
    //     // Return the ad as JSON
    //     return response()->json($adToShow);
    // }
    
    // private function getNextAdToShow($ads)
    // {
    //     $adsCount = $ads->count();
    //     $showPattern = range(1, $adsCount); // Display each ad once in a cycle
    
    //     // Determine the ad to show based on the pattern
    //     $sortedAds = $ads->sortBy('display_count')->values();
    //     $totalPatternCount = array_sum($showPattern);
    
    //     // Get the current position in the pattern
    //     $currentIndex = array_sum($sortedAds->pluck('display_count')->toArray()) % $totalPatternCount;
    
    //     // Find the ad based on the pattern
    //     $cumulativeCount = 0;
    //     foreach ($showPattern as $index => $count) {
    //         $cumulativeCount += $count;
    //         if ($currentIndex < $cumulativeCount) {
    //             return $sortedAds[$index];
    //         }
    //     }
    
    //     // Default to the first ad if something goes wrong
    //     return $sortedAds->first();
    // }

     
//   public function assignVoucherToUser(Request $request)
// {
//     // Validate the request
//     $validator = Validator::make($request->all(), [
//         'user_id' => 'required|exists:users,id',
//         'voucher_id' => 'required|exists:vouchers,id',
//     ]);

//     if ($validator->fails()) {
//         return response()->json(['errors' => $validator->errors()], 422);
//     }

//     // Assign the voucher to the user
//     DB::table('user_vouchers')->insert([
//         'user_id' => $request->input('user_id'),
//         'voucher_id' => $request->input('voucher_id'),
//         'created_at' => now(),
//         'updated_at' => now(),
//     ]);

//     return response()->json([
//         'status' => 'success',
//         'message' => 'Voucher assigned successfully',
//     ], 200);
// }
  
     
}
