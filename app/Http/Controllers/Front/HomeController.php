<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\Category;
use App\Models\Contact;
use App\Models\Domain;
use App\Models\Language;
use App\Models\Page;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class HomeController extends Controller
{
    public function index()
    {
        $sliders = Slider::select('id')->orderBy('sort_number')->get();
        return view('front.index', compact('sliders'));
    }

    public function contact()
    {
        return view('front.contact');
    }

    public function pages($lang, Page $page, $title)
    {
        return view('front.pages', compact('page'));
    }
    // public function gallery(){
    //     $gallery = Gallery::select('id')->orderBy('sort_number')->get();
    //     // return view('front.index', compact('sliders'));
    //     return view('front.gallery',compact('gallery'));
    // }

    public function address()
    {
        $address = Address::where('user_id', $this->client->id)->where('domain_id', session()->get('domain')['id'])->paginate(10);

        return view('front.pages.account.address', compact('address'));
    }

    public function about_us()
    {
        return view('front.pages.about_us');
    }

    public function contact_post(Request $request)
    {
        $request->validate([
            'fullname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'header' => 'required',
            'message' => 'required',
        ]);
        Contact::create($request->except('_token'));
        return redirect()->back()->with('success', "Successfully");
    }
}
