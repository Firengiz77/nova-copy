<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title', 'Anas')</title><!-- Favicon  -->
    <link rel="apple-touch-icon" sizes="57x57" href="{{asset('/front/icons/favicon/apple-icon-57x57.png')}}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{asset('/front/icons/favicon/apple-icon-60x60.png')}}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{asset('/front/icons/favicon/apple-icon-72x72.png')}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('/front/icons/favicon/apple-icon-76x76.png')}}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{asset('/front/icons/favicon/apple-icon-114x114.png')}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{asset('/front/icons/favicon/apple-icon-120x120.png')}}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{asset('/front/icons/favicon/apple-icon-144x144.png')}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{asset('/front/icons/favicon/apple-icon-152x152.png')}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('/front/icons/favicon/apple-icon-180x180.png')}}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{asset('/front/icons/favicon/android-icon-192x192.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('/front/icons/favicon/favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{asset('/front/icons/favicon/favicon-96x96.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('/front/icons/favicon/favicon-16x16.png')}}">
    <!--    <link rel="manifest" href="icons/favicon/manifest.json">-->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{asset('/front/icons/favicon/ms-icon-144x144.png')}}">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="{{asset('/front/css/style.min.css')}}">
    <link rel="stylesheet" href="{{asset('/front/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('/front/css/nice-select.css')}}">
    <link rel="stylesheet" href="{{asset('/front/css/swiper-bundle.min.css')}}">
    <link rel="stylesheet" href="{{asset('/front/css/aos.css')}}">
</head>
<body>
@php
    $allowed_langs=['az','en','ru'];
@endphp
<header class="header">
    <div class="container">
        <div class="header__inner">
            <div class="header__left">
                <ul class="header__list">
                    @foreach($sharedData['pages'] as $page)
                        <li class="header__list-item" data-aos="translateY-120" data-aos-duration="1000"><a
                                class="header__list-link"
                                href="{{route('front.pages',['lang'=>app()->getLocale(),'page'=>$page->id,'title'=>$page->title])}}">{{$page->title}}</a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="header__right">
                <button class="btnSubmit" data-aos="translateY120" data-aos-duration="1700">Submit the paper</button>
                <div class="searchBox" data-aos="translateX500" data-aos-duration="1000"><input type="text">
                    <div class="searchEffect"></div>
                </div>
                @if(auth()->guard('front')->check())
                    <div class="customDropdown customDropdownUser" data-aos="translateX500" data-aos-duration="1000">
                        <div class="selected"><img class="userIcon" src="{{asset('/front/icons/user_icon.svg')}}"
                                                   alt="user_icon">
                            <img class="arrow" src="{{asset('/front/icons/arrow.svg')}}" alt="arrow_icon">
                        </div>
                        <div class="options-container">
                            <a class="option" href="#0">Profile</a>
                            <a class="option" href="#0">History</a>
                            <a class="option" href="{{route('front.logout',['lang'=>app()->getLocale()])}}">Log out</a>
                        </div>
                    </div>
                @else
                    <div class="customDropdown customDropdownUser" data-aos="translateX500" data-aos-duration="1000">
                        <div class="selected"><img class="userIcon" src="{{asset('/front/icons/user_icon.svg')}}"
                                                   alt="user_icon">
                            <img class="arrow" src="{{asset('/front/icons/arrow.svg')}}" alt="arrow_icon">
                        </div>
                        <div class="options-container">
                            <a class="option" href="{{route('front.singInUp',['lang'=>app()->getLocale()])}}">Login /
                                Register</a>
                        </div>
                    </div>
                @endif
                <div class="customDropdown customDropdownLanguage" data-aos="translateX500" data-aos-duration="1000">
                    <div class="selected">
                        <span>{!! strtoupper(app()->getLocale()) !!}</span>
                        <img class="arrow" src="{{asset('/front/icons/arrow.svg')}}" alt="arrow_icon">
                    </div>
                    <div class="options-container">
                        @foreach($sharedData['langs'] as $key)
                            <a class="option"
                               href="{{route('front.lang',['lang'=>$key->language])}}">{{strtoupper($key->language)}}</a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="subheader">
    <div class="container">
        <div class="subheader__inner">
            <div class="hamburgerMenu">
                @if(!auth()->guard('front')->check())
                    <div class="hamburgerMenu__head">
                        <a class="hamburgerMenu__auth"
                           href="{{route('front.singInUp',['lang'=>app()->getLocale()])}}"><img
                                src="{{asset('/front/icons/user_icon.svg')}}" alt="user_icon">
                            <span>Login / Register</span></a>
                        <div class="hamburgerMenu__close"><img src="{{asset('/front/icons/close_icon.svg')}}" alt="">
                        </div>
                    </div>
                @endif
                <div class="hamburgerMenu__subhead">
                    <a class="hamburgerMenu__changesLang" href="#0">EN</a>-
                    <a class="hamburgerMenu__changesLang" href="#0">AZ</a>
                    <a class="hamburgerMenu__changesLang" href="#0">RU</a>
                </div>
                <div class="hamburgerMenu__main">
                    <ul class="hamburgerMenu__pagesList">
                        @foreach($sharedData['pages'] as $page)
                            <li class="hamburgerMenu__pagesList-item">
                                <a class="hamburgerMenu__pagesList-link"
                                   href="{{route('front.pages',['lang'=>app()->getLocale(),'page'=>$page->id,'title'=>$page->title])}}">{{$page->title}}</a>
                            </li>
                        @endforeach
                    </ul>
                    <button class="btnSubmit">Submit the paper</button>
                </div>
                <div class="hamburgerMenu__footer">
                    <ul class="hamburgerMenu__userList">
                        <li class="hamburgerMenu__userList-item"><a class="hamburgerMenu__userList-link" href="#">Profile</a>
                        </li>
                        <li class="hamburgerMenu__userList-item"><a class="hamburgerMenu__userList-link" href="#">History</a>
                        </li>
                        <li class="hamburgerMenu__userList-item"><a class="hamburgerMenu__userList-link"
                                                                    href="{{route('front.logout',['lang'=>app()->getLocale()])}}">Log
                                out</a></li>
                    </ul>
                </div>
            </div>
            <div class="subheader__left">
                <div class="hamburger"><span></span> <span></span> <span></span></div>
                <div class="subheader__imgWrapper" data-aos="translateX-600" data-aos-duration="1000"><img
                        class="subheader__img" src="/front/img/subheader_img.jpg" alt="img"></div>
                <div class="subheader__left-descr"><h2 class="subheader__descrH2" data-aos="translateY-120"
                                                       data-aos-duration="1500">Azerbaijan National Academy of
                        Sciences</h2>
                    <h2 class="subheader__subtitle" data-aos="translateY120" data-aos-duration="1500">ANAS TRANSACTIONS
                        EARTH SCIENCES</h2>
                    <h2 class="subheader__descrH2" data-aos="translateY120" data-aos-duration="1500"
                        data-aos-delay="500">Geology and Geophysics Institute</h2></div>
                <div class="searchBox searchBox_mobile" data-aos="translateX500" data-aos-duration="1000"><input
                        type="text">
                    <div class="searchEffect"></div>
                </div>
            </div>
            <div class="subheader__right"><h1 class="subheader__title" data-aos="translateX1000"
                                              data-aos-duration="2000">International scientific journal</h1>
                <div class="subheader__right-group"><h2 class="subheader__descrH3" data-aos="translateY-120"
                                                        data-aos-duration="1500">ISSN: 2663-0419 (electonic
                        version)</h2>
                    <h2 class="subheader__descrH3" data-aos="translateY120" data-aos-duration="1500">ISSN: 2218-8754
                        (print version)</h2></div>
                <div class="subheader__link" data-aos="translateY120" data-aos-duration="1500" data-aos-delay="500">
                    journalesgia.com
                </div>
            </div>
            <h1 class="subheader__title mobile">International scientific journal</h1>
            <h2 class="subheader__descrH3 mobile">ISSN: 2663-0419 (electonic version)</h2>
            <h2 class="subheader__descrH3 mobile">ISSN: 2218-8754 (print version)</h2>
            <div class="subheader__link mobile">journalesgia.com</div>
        </div>
    </div>
</div>
@yield('content')
<footer class="footer">
    <div class="container">
        <div class="footer__top">
            <ul class="list">
                @foreach($sharedData['pages'] as $page)
                    <li class="list__item"><a class="list__item-link"
                                              href="{{route('front.pages',['lang'=>app()->getLocale(),'page'=>$page->id,'title'=>$page->title])}}">{{$page['title']}}</a>
                    </li>
                @endforeach
                <li class="list__item">
                    <button class="btnSubmit">Submit the paper</button>
                </li>
            </ul>
            <ul class="list">
                <li class="list__item"><a class="list__item-link" href="#0">Publication ethics</a></li>
                <li class="list__item"><a class="list__item-link" href="#0">Archive</a></li>
                <li class="list__item"><a class="list__item-link"
                                          href="{{route('front.contact',['lang'=>app()->getLocale()])}}">Contacts</a>
                </li>
            </ul>
            <ul class="list list_contacts">
                <li class="list__item title">Contacts</li>
                <li class="list__item">
                    <div class="list__item-key">Editorship address:</div>
                    <div class="list__item-value">{{$sharedData['contact']['address']}}
                    </div>
                </li>
                <li class="list__item"><span class="list__item-link">
                        <div class="list__item-key">Tel:</div>
                        <div class="list__item-value">{{$sharedData['contact']['phone']}}</div>
                    </span></li>
                <li class="list__item"><span class="list__item-link">
                        <div class="list__item-key">Fax:</div>
                        <div class="list__item-value">{{$sharedData['contact']['fax']}}</div>
                    </span></li>
                <li class="list__item"><span class="list__item-link">
                        <div class="list__item-key">E-mail:</div>
                        <div class="list__item-value">{{$sharedData['contact']['email']}}</div>
                    </span></li>
            </ul>
        </div>
        <div class="footer__bottom">
            <div class="copyright">Earth Science Division, Azerbaijan National Academy of Sciences. All rights
                reserved.
            </div>
            <div class="social"><a class="social__link" href="#0"><img src="/front/icons/fb_icon.svg" alt="social_icon">
                </a><a
                    class="social__link" href="#0"><img src="/front/icons/instagram_icon.svg" alt="social_icon"></a>
            </div>
        </div>
    </div>
</footer>
<script src="{{asset('/front/js/libs/jquery-3.6.0.min.js')}}"></script>
<script src="{{asset('/front/js/libs/bootstrap.min.js')}}"></script>
<script src="{{asset('/front/js/libs/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('/front/js/libs/swiper-bundle.min.js')}}"></script>
<script src="{{asset('/front/js/swiper.js')}}"></script>
<script src="{{asset('/front/js/libs/aos.js')}}"></script>
<script src="{{asset('/front/js/script.js')}}"></script>
</body>
</html>
