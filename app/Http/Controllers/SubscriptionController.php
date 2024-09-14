<?php 

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Subscription;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;


class SubscriptionController extends Controller
{
    public function subscribe(Request $request)
    {
       
        // Validate the email
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors()
            ], 400);
        }
         mail('maher.saqib65@gmail.com','check',' clove');
       
        return response()->json([
            'message' => 'Thank you for subcrible our Newsletter'
        ], 201);
    }
    
    public function contact(Request $request)
    {
       
    //   echo $request->name;
    //   echo $request->email;
    //   echo $request->phone;
    //   echo $request->subject;
    //   echo $request->message;
        
       
        return response()->json([
            'message' => 'Thank you Contacting Us'
        ], 201);
    }
    
    
    
    public function about(Request $request)
    {
       
        $aboutRecords = DB::table('about')->get();
        return response()->json($aboutRecords);
       
    }
    
    
     
    public function blogs(Request $request)
    {
       
        $aboutBlog = DB::table('blogs')->get();
        return response()->json($aboutBlog);
       
    }
    
    
    public function blogsDetails($slug)
    {
       
        $aboutBlog = DB::table('blogs')->where('slug',$slug)->get();
        return response()->json($aboutBlog);
       
    }
    
    
    
    
    
    
    
    
    
    
}
