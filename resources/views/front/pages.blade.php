@extends('front.layouts.app')
@section('content')
    <main class="main">
        <div class="container">
            <div class="breadCrumb">
                <ul class="breadCrumb__list">
                    <li class="breadCrumb__list-item">
                        <a class="breadCrumb__list-link" href="{{route('front.index',['lang'=>app()->getLocale()])}}">
                            <img class="breadCrumb__homeIcon" src="{{asset('/front/icons/breadCrumb__icon.svg')}}"
                                 alt="breadCrumb__icon">
                        </a>
                        <img class="breadCrumb__arrow" src="{{asset('front/icons/arrow_right.svg')}}" alt="arrow_right">
                    </li>
                    <li class="breadCrumb__list-item">
                        <a class="breadCrumb__list-link" href="{{request()->url()}}">{{$page->title}}</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-xl-3">
                    @include('front.pages.filter')
                </div>
                <div class="col-xl-9">
                    <div class="aboutUs"><h2 class="aboutUs__title">{{$page->title}}</h2>
                        <div class="aboutUs__descr">
                            {!! $page->description !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
