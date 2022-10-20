@extends('front.layouts.app')
@section('content')
    <main class="main">
        <div class="container">
            <div class="breadCrumb">
                <ul class="breadCrumb__list">
                    <li class="breadCrumb__list-item"><a class="breadCrumb__list-link"
                                                         href="{{route('front.index',['lang'=>app()->getLocale()])}}"><img
                                class="breadCrumb__homeIcon" src="{{asset('/front/icons/breadCrumb__icon.svg')}}"
                                alt="breadCrumb__icon">
                        </a><img
                            class="breadCrumb__arrow" src="{{asset('/front/icons/arrow_right.svg')}}" alt="arrow_right">
                    </li>
                    <li class="breadCrumb__list-item">
                        <a class="breadCrumb__list-link" href="{{request()->url()}}">Login / Register</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-xl-3">
                    @include('front.pages.filter')
                </div>
                <div class="col-xl-9">
                    <div class="auth">
                        <div class="auth__left"><!--                            <h2 class="auth__text"></h2>--></div>
                        <div class="auth__right"><h2 class="auth__title">Create account</h2>
                            <ul class="tabs">
                                <li class="tab">Login</li>
                                <li class="tab">Register</li>
                            </ul>
                            <div class="auth__content">
                                <form>
                                    <input class="customInput" type="email" placeholder="Email"><input
                                        class="customInput" type="password" placeholder="Password"> <a
                                        class="forgetPassword" href="#">Forget password?</a>
                                    <button class="customBtn">Login</button>
                                </form>
                            </div>
                            <div class="auth__content">
                                <form><select class="customSelect">
                                        <option disabled="disabled" selected="selected" hidden>Title</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                    </select> <input class="customInput" type="text" placeholder="Name"> <input
                                        class="customInput" type="text" placeholder="Last name"> <select
                                        class="customSelect">
                                        <option disabled="disabled" selected="selected" hidden>Country/Location</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                    </select> <input class="customInput" type="text" placeholder="Organization name">
                                    <input
                                        class="customInput" type="email" placeholder="Email"> <input class="customInput"
                                                                                                     type="password"
                                                                                                     placeholder="Password">
                                    <input class="customInput" type="password" placeholder="Repeat password">
                                    <button class="customBtn">Register</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
