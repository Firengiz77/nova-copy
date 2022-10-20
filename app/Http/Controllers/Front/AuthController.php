<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class AuthController extends Controller
{
    public function logout(Request $request)
    {
        Auth::guard('front')->logout();
        return redirect()->route('front.home', ['lang' => app()->getLocale()]);
    }

    public function singInUp()
    {
        return view('front.auth');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'password' => 'required',
        ]);
        if (auth()->guard('front')->attempt(['email' => $request->email, 'password' => $request->password])) {
            $cart = Cart::query()->whereDomainId(session()->get('domain')['id'])
                ->where('user_id', $this->client->getAttribute('id'))
                ->first();
            if ($cart) {
                $cart->update([
                    'user_id' => \auth()->guard('front')->id()
                ]);
                $this->client = Auth::guard('front')->user();
            }
            return response()->json(['success' => true]);
        } else {
            return response()->json(['errors' => ['auth' => [__('static.incorrect')]]]);
        }
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'phone' => ['required', 'string', 'min:8', 'unique:users,phone'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email'],
            'password' => ['required', 'string', 'min:8'],
        ]);
        $user = User::create([
            'phone' => $request->phone,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        Auth::guard('front')->login($user);
        return response()->json(['success' => true]);
    }

    public function forgot_post(Request $request)
    {
        $request->validate([
            'email' => ['required', 'string', 'email', 'max:255', 'exists:users,email'],
        ]);
        $token = Hash::make($request->email);
        $user = User::where('email', $request->email)->first();
        $user->update([
            'token' => $token
        ]);
        Mail::send('front.mail.forgot_mail', ['token' => $token], function ($message) use ($request) {
            $message->to($request->email, session()->get('domain')['name'])->subject
            ('Forgot Password in ' . session()->get('domain')['name']);
            $message->from(config('mail.mailers.smtp.username'), session()->get('domain')['name']);
        });
        return response()->json(['success' => true, 'email_for' => $user->email]);
    }

    public function reset_post(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'password' => ['required', 'string', 'min:8'],
        ]);
        $user = User::where('token', $request->token)->first();
        abort_if(!$user, 404);
        $user->update([
            'password' => bcrypt($request->password)
        ]);
        return response()->json(['success' => true]);
    }
}
