<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;



Route::get('/clear', function () {
    Artisan::call('view:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('route:clear');
    return "Successfully Cleared";
  });
  





Route::get('/', function () {return view('admin.login');});


// admin route
Route::group(['middleware'=>['IsLogin']],function () {


Route::get('panel/admin/login', function () {return view('admin.login');})->name('panel.admin.login');
Route::get('panel/admin/home', [AdminController::class, 'indexAdmin'])->name('panel.admin.home');
// Route::post('panel/admin/edit/home', [AdminController::class, 'GoldRateUpdate']);



// show all users 
Route::get('panel/admin/users', [AdminController::class, 'ShowUser'])->name('show-all-user');
Route::get('panel/admin/del-user', [AdminController::class, 'delUser'])->name('del-user');


// show padometer deatils
Route::get('panel/admin/padometer/{id}', [AdminController::class, 'ShowpadoMeterDetails'])->name('show-padometer');


// add vouchar and show ,delete , edit
Route::get('panel/admin/assigned-vouchar/{id}', [AdminController::class, 'ShowAssignedVoucahrDetails'])->name('show-assign-vouchar');



Route::get('panel/admin/add-vouchar', [AdminController::class, 'addRateByVouchar']);
Route::post('add-vouchars', [AdminController::class, 'AddVouchars']);
Route::get('panel/admin/show-vouchar', [AdminController::class, 'ShowBlogs'])->name('show-blogs');
Route::get('panel/admin/del-report-by-blog', [AdminController::class, 'delBlogs'])->name('del-blogs');

// assign vouchar
Route::get('panel/admin/assign-vouchar/{id}', [AdminController::class, 'addRateByVoucharAssign']);
Route::post('add-vouchars-assgin', [AdminController::class, 'AddVoucharsAssign']);
Route::get('panel/admin/show-vouchar-assign', [AdminController::class, 'ShowBlogsAssign'])->name('show-assign-blogs');
Route::get('panel/admin/del-report-by-assign-vocuhar', [AdminController::class, 'delBlogsAssignVouchar'])->name('del-blogs-assign-vanchar');



// add banner ads
Route::get('panel/admin/add-banner-ads', [AdminController::class, 'addRateByAddBannerLoad']);
Route::post('add-banner-ads', [AdminController::class, 'AddBannerAds']);
Route::get('panel/admin/show-banner-ads', [AdminController::class, 'ShowBannerAds'])->name('show-banner-ads');
Route::get('panel/admin/del-report-banner-ads', [AdminController::class, 'delBlogsBannerAds'])->name('del-banners-ads');

// add load business dirrectotries

Route::get('panel/admin/add-business-directory', [AdminController::class, 'addRateByAddBusinessDorectory']);
Route::post('add-business-load', [AdminController::class, 'AddBusinessLoad']);
Route::get('panel/admin/show-business-directories', [AdminController::class, 'ShowBusinessAds'])->name('show-business-ads');
Route::get('panel/admin/del-report-business-ads', [AdminController::class, 'delBlogsBusniessAds'])->name('del-business-ads');



// home page content update 
// Route::get('panel/admin/home-content-update', [AdminController::class, 'HomeUpdate']);
// Route::post('update-home-page-content', [AdminController::class, 'UpdateHomePageContent']);

// home page content today gold price update 
// Route::get('panel/admin/home-content-update-gold', [AdminController::class, 'HomeUpdateGoldRate']);
// Route::post('update-home-page-content-gold-rate', [AdminController::class, 'UpdateHomePageContentGoldRate']);

// rate by monlthy
// Route::get('panel/admin/add-rate-by-month', [AdminController::class, 'addRateByMonth']);
// Route::post('add-rate-report-by-month', [AdminController::class, 'AddRateByMonthInsert']);
// Route::get('panel/admin/show-rate-by-month', [AdminController::class, 'ShowReportByMonth'])->name('show-report-by-month');
// Route::get('panel/admin/del-report-by-month', [AdminController::class, 'delReportByMonth'])->name('del-report-by-month');
// Route::get('panel/admin/edit/{id}', [AdminController::class, 'EditRportMonlthy']);
// Route::post('add-rate-report-by-month-update', [AdminController::class, 'EditMonlthyReport']);
// rate by monlthy
// Route::get('panel/admin/add-rate-by-week', [AdminController::class, 'addRateByWeek']);
// Route::post('ad/d-rate-report-by-week', [AdminController::class, 'AddRateByWeekInsert']);
// Route::get('panel/admin/show-rate-by-week', [AdminController::class, 'ShowReportByWeek'])->name('show-report-by-week');
// Route::get('panel/admin/del-report-by-week', [AdminController::class, 'delReportByWeek'])->name('del-report-by-week');
// Route::get('panel/admin/edit-week/{id}', [AdminController::class, 'EditRportWeekly']);
// Route::post('add-rate-report-by-week-update', [AdminController::class, 'EditWeekReport']);
// // rate by Day
// Route::get('panel/admin/add-rate-by-day', [AdminController::class, 'addRateByDay']);
// Route::post('add-rate-report-by-day', [AdminController::class, 'AddRateByDayInsert']);
// Route::get('panel/admin/show-rate-by-day', [AdminController::class, 'ShowReportByDay'])->name('show-report-by-day');
// Route::get('panel/admin/del-report-by-day', [AdminController::class, 'delReportByDay'])->name('del-report-by-day');
// Route::get('panel/admin/edit-day/{id}', [AdminController::class, 'EditRportDay']);
// Route::post('add-rate-report-by-day-update', [AdminController::class, 'EditDayReports']);


// rate by monlthy
// Route::get('panel/admin/add-blogs', [AdminController::class, 'addRateByBlog']);
// Route::post('add-blogs', [AdminController::class, 'AddBlogs']);
// Route::get('panel/admin/show-blogs', [AdminController::class, 'ShowBlogs'])->name('show-blogs');
// Route::get('panel/admin/del-report-by-blog', [AdminController::class, 'delBlogs'])->name('del-blogs');
// Route::get('panel/admin/edit-blog/{id}', [AdminController::class, 'EditBlogs']);
// Route::post('add-rate-report-by-blogs-update', [AdminController::class, 'EditDayBlogs']);


// Route::get('panel/admin/add-web-stories', [AdminController::class, 'addWebStories']);
// Route::post('add-web-stories', [AdminController::class, 'AddWebStoriesInsert']);
// Route::get('panel/admin/show-web-stories', [AdminController::class, 'ShowWebStories'])->name('show-web-stories');
// Route::get('panel/admin/del-web-stories', [AdminController::class, 'delWebStory'])->name('del-web-stories');

              


// ck editor 
Route::post('upload', [AdminController::class, 'upload'])->name('upload');
// indexing api
Route::get('panel/admin/indexing-api-google', [AdminController::class, 'IndexingApi']);
Route::post('panel-admin-submit-api-indexing-google', [AdminController::class, 'SubmitURL']);


});


Auth::routes();
