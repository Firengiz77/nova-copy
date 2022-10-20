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
                    <li class="breadCrumb__list-item"><a class="breadCrumb__list-link" href="{{request()->url()}}">Page
                            not
                            found</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="error">
                        <img class="error__img" src="{{asset('/front/img/error_img.svg')}}"
                                            alt="error_img">
                        <h2 class="error__descr">Something’s missing.</h2>
                        <a class="error__backToHomepage"
                                                                             href="{{route('front.index',['lang'=>app()->getLocale()])}}">Back
                            to Homepage</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
