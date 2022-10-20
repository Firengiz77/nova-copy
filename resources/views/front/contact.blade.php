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
                    <li class="breadCrumb__list-item"><a class="breadCrumb__list-link"
                                                         href="{{route('front.contact',['lang'=>app()->getLocale()])}}">Contacts</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-xl-3">
                    @include('front.pages.filter')
                </div>
                <div class="col-xl-9">
                    <div class="contacts">
                        <div class="contacts__head">
                            <iframe
                                src="{{$sharedData['contact']->map_url}}"
                                allowfullscreen="" loading="lazy"></iframe>
                        </div>
                        <div class="contacts__main">
                            <ul class="contacts__list">
                                <li class="contacts__list-item">
                                    <div class="contacts__list-key"><img
                                            src="{{asset('/front/icons/location_icon.svg')}}" alt="icon">
                                        <span>Address</span>
                                    </div>
                                    <div class="contacts__list-value">{{$sharedData['contact']->address}}
                                    </div>
                                </li>
                                <li class="contacts__list-item">
                                    <div class="contacts__list-key"><img src="{{asset('/front/icons/tel_icon.svg')}}"
                                                                         alt="icon">
                                        <span>Number</span></div>
                                    <div class="contacts__list-value">{{$sharedData['contact']->phone}}</div>
                                </li>
                                <li class="contacts__list-item">
                                    <div class="contacts__list-key"><img src="{{asset('/front/icons/fax_icon.svg')}}"
                                                                         alt="icon">
                                        <span>Fax</span></div>
                                    <div class="contacts__list-value">{{$sharedData['contact']->fax}}</div>
                                </li>
                                <li class="contacts__list-item">
                                    <div class="contacts__list-key"><img src="{{asset('/front/icons/email_icon.svg')}}"
                                                                         alt="icon">
                                        <span>Email</span></div>
                                    <div class="contacts__list-value">{{$sharedData['contact']->email}}
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
