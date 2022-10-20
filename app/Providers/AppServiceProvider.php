<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Contact;
use App\Models\Domain;
use App\Models\Language;
use App\Models\Order;
use App\Models\Page;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(255);

        View::composer(['front.layouts.app', 'front.contact'], function ($view) {
            $view->with('sharedData', [
                "contact" => Contact::select('address', 'phone', 'fax', 'email', 'lgt', 'lngt')->first(),
                "pages" => Page::select('id', 'title', 'sort_number')->orderBy('sort_number')->get(),
                "langs" => Language::select('language')->where('language', '!=', app()->getLocale())->get(),
            ]);
        });
    }
}
