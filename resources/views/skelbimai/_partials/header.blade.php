{{--Normalus meniu--}}
<div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>

<header class="site-navbar container py-0 " style="background-color: tomato;" role="banner">

    <!-- <div class="container"> -->
    <div class="row align-items-center">

        <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="/" class="text-white mb-0">Skelbimai24</a></h1>
        </div>
        <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

                <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                    <li class="active"><a href="/">Pagrindinis</a></li>
                    <li><a href="/skelbimai">Skelbimai</a></li>
                    <li class="has-children">
                        <a href="#">Apie</a>
                        <ul class="dropdown">
                            <li><a href="/apie">Projekto informacija</a></li>
                        </ul>
                    </li>
                    <li class="mr-5"><a href="/kontaktai">Kontaktai</a></li>
                    @guest
                        <li><a href="/login" class="cta"><span class="bg-primary text-white rounded">Prisijungti</span></a></li>

                    <li><a href="/register" class="cta"><span class="bg-primary text-white rounded">Registruotis</span></a></li>
                    @endguest
                    @auth
                    <li><a href="/logout" class="cta"><span class="bg-primary text-white rounded">Atsijungti</span></a></li>
                    @endauth
                </ul>
            </nav>
        </div>


        <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
        </div>

    </div>
    <!-- </div> -->

</header>



