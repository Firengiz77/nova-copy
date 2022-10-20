<?php

namespace App\Http\Middleware;

use App\Models\Language;
use Carbon\Carbon;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class LangMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $lang = $request->lang ? $request->lang : 'az';
        $l = Language::where('language', $lang)->first();
        if ($l) {
            App::setLocale($request->lang);
            Carbon::setLocale($request->lang);
        } else {
            App::setLocale('az');
            Carbon::setLocale('az');
        }
        return $next($request);
    }
}
