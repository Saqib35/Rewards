<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
class IsLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        
        if(Route::currentRouteName()=='panel.admin.login'){
            if(Auth::check()){
                return redirect('panel/admin/home');
            }else{
                return $next($request); 
            }
        }else{
            if(Auth::check()){
                return $next($request); 
            }else{
                return redirect('panel/admin/login');
            }
        }


    }
}
