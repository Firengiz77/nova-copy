<?php

use App\Models\Language;
use Carbon\Carbon;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//\Illuminate\Support\Facades\Auth::routes();
//Route::redirect('/admin', '/admin/resources/orders');
//Route::redirect('/admin/dashboards/main', '/admin/resources/orders');

Route::post('nova2/login', [\App\Http\Controllers\NovaNewAuthController::class, 'authLogin'])->name('nova.new.auth');

//Route::redirect('/', function () {
//    return redirect()->route('front.index', ['lang' => app()->getLocale()]);
//});
Route::get('/', function () {
    return redirect()->route('front.index', ['lang' => app()->getLocale()]);
});
Route::group(['as' => 'front.', 'prefix' => '{lang}', 'middleware' => 'lang2', 'where' => [
    'lang' => Language::select('language')->get()->pluck('language')->implode('|')
],], function () {

    Route::get('/404notfound', function () {
        return view('front.pages.404page');
    })->name('404page');

    Route::get('/lang', function ($lang) {
        $url = explode('/', url()->previous());
        $url[3] = $lang;
        app()->setLocale($lang);
        Carbon::setLocale($lang);
        return redirect(implode('/', $url));
    })->name('lang');

    Route::get('/', [App\Http\Controllers\Front\HomeController::class, 'index'])->name('index');
    Route::get('/pages/{page}/{title}', [App\Http\Controllers\Front\HomeController::class, 'pages'])->name('pages');

    Route::get('/about_us', [App\Http\Controllers\Front\HomeController::class, 'about_us'])->name('about_us');
    Route::get('/contact', [App\Http\Controllers\Front\HomeController::class, 'contact'])->name('contact');
    Route::post('/contact_post', [App\Http\Controllers\Front\HomeController::class, 'contact_post'])->name('contact_post');
    //Auth start
    Route::get('/logout', [App\Http\Controllers\Front\AuthController::class, 'logout'])->name('logout');
    Route::get('/page/auth', [App\Http\Controllers\Front\AuthController::class, 'singInUp'])->name('singInUp');
    Route::post('/signin', [App\Http\Controllers\Front\AuthController::class, 'login'])->name('login');
    Route::post('/signup', [App\Http\Controllers\Front\AuthController::class, 'register'])->name('register');
    Route::post('/forgot_post', [App\Http\Controllers\Front\AuthController::class, 'forgot_post'])->name('forgot_post');
    Route::post('/reset_post', [App\Http\Controllers\Front\AuthController::class, 'reset_post'])->name('reset_post');
    //Auth end

    //Account Start
    Route::group(['as' => 'account.', 'prefix' => '/account', 'middleware' => 'account_auth'], function () {
        Route::get('/address', [App\Http\Controllers\Front\HomeController::class, 'address'])->name('address');
        Route::post('/address_post', [App\Http\Controllers\Front\AccountController::class, 'address_post'])->name('address_post');
        Route::put('/address_put', [App\Http\Controllers\Front\AccountController::class, 'address_put'])->name('address_put');
        Route::delete('/address_delete', [App\Http\Controllers\Front\AccountController::class, 'address_delete'])->name('address_delete');
        Route::get('/orders', [\App\Http\Controllers\Front\AccountController::class, 'orders'])->name('orders');
        Route::get('/personal/info', [\App\Http\Controllers\Front\AccountController::class, 'account_get'])->name('account_get');
        Route::post('/personal/info', [\App\Http\Controllers\Front\AccountController::class, 'account_post'])->name('account_post');
    });
    //Account end
});
