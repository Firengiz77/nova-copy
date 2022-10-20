@extends('front.layouts.app')
@section('content')
    <main class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">
                    <div class="filterWrapper">
                        @include('front.pages.filter')
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-9">
                    <div class="wrapper"><span class="contentNumber">№ 1,</span> <span class="contentYear">2021</span>
                        <button class="fullIssue"><span>Full issue</span> <img src="/front/icons/fullIssue_icon.svg"
                                                                               alt="fullIssue_icon"></button>
                        <h2 class="contentTitle">GEOLOGY AND GEOPHYSICS</h2>
                        <div class="content"><h3 class="content__title">Petroleum source rock characterization and
                                hydrocarbon generation, petrographic and filtration-volume, South Caspian basin,
                                Azerbaijan
                                Petroleum source rock characterization and hydrocarbon generation, petrographic and
                                filtration-volume, South Caspian basin, Azerbaijan Petroleum source rock
                                characterization and
                                hydrocarbon generation, petrographic and filtration-volume, South Caspian basin,
                                Azerbaijan</h3>
                            <h4 class="content__subtitle">by Senin B.V., Kerimov V.Yu., Mustaev R.N., Aliyeva S.A.,
                                Feyzullayev A.A., Aliyev Ch.S., Baghirli R.J., Mahmudova F.F.</h4><a
                                class="content__more"
                                href="#0"><span>More</span>
                                <img src="/front/icons/arrow_more.svg" alt="arrow_more"></a></div>
                        <div class="content"><h3 class="content__title">Petroleum source rock characterization and
                                hydrocarbon generation, petrographic and filtration-volume, South Caspian basin,
                                Azerbaijan</h3>
                            <h4 class="content__subtitle">by Senin B.V., Kerimov V.Yu., Mustaev R.N., Aliyeva S.A.,
                                Feyzullayev A.A., Aliyev Ch.S., Baghirli R.J., Mahmudova F.F.</h4><a
                                class="content__more"
                                href="#0"><span>More</span>
                                <img src="/front/icons/arrow_more.svg" alt="arrow_more"></a></div>
                        <h2 class="contentTitle">THEORY AND PRACTICE OF OIL FIELDS</h2>
                        <div class="content"><h3 class="content__title">Petroleum source rock characterization and
                                hydrocarbon generation, petrographic and filtration-volume, South Caspian basin,
                                Azerbaijan</h3>
                            <h4 class="content__subtitle">by Senin B.V., Kerimov V.Yu., Mustaev R.N., Aliyeva S.A.,
                                Feyzullayev A.A., Aliyev Ch.S., Baghirli R.J., Mahmudova F.F.</h4><a
                                class="content__more"
                                href="#0"><span>More</span>
                                <img src="/front/icons/arrow_more.svg" alt="arrow_more"></a></div>
                        <div class="content"><h3 class="content__title">Petroleum source rock characterization and
                                hydrocarbon generation, petrographic and filtration-volume, South Caspian basin,
                                Azerbaijan</h3>
                            <h4 class="content__subtitle">by Senin B.V., Kerimov V.Yu., Mustaev R.N., Aliyeva S.A.,
                                Feyzullayev A.A., Aliyev Ch.S., Baghirli R.J., Mahmudova F.F.</h4><a
                                class="content__more"
                                href="#0"><span>More</span>
                                <img src="/front/icons/arrow_more.svg" alt="arrow_more"></a></div>
                    </div>
                </div>
            </div>
            <div class="swiperWrapper">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach($sliders as $s)
                            <div class="swiper-slide"><img src="{{$s->getFirstMediaUrl('image')}}" alt="slide"></div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button-prev-custom swiper-btn"><img
                        src="{{asset('/front/icons/arrowSlider_left.svg')}}"
                        alt="arrowSlider">
                </div>
                <div class="swiper-button-next-custom swiper-btn"><img
                        src="{{asset('/front/icons/arrowSlider_right.svg')}}"
                        alt="arrowSlider">
                </div>
            </div>
        </div>
    </main>
@endsection
