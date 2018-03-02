<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('client/assets/img/apple-icon.png')}}">
    <link rel="icon" type="image/png" href="{{asset('client/assets/img/favicon.png')}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Now Ui Kit by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="{{asset('client/assets/css/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{asset('client/assets/css/now-ui-kit.css?v=1.1.0')}}" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{asset('client/assets/css/demo.css')}}" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-main fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container-fluid">
            <div class="navbar-translate">
                <a class="navbar-brand" href="http://demos.creative-tim.com/now-ui-kit/index.html" rel="tooltip" target="_blank">
                    <img src="{{asset('client/assets/img/logo.png')}}" width="40px" /> <span class="items">ZLITEMARKET.io</span>
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="{{asset('client/assets/img/blurred-image-1.jpg')}}">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <p><span class="items"> Log In </span></p>
                        </a>
                    </li>
                    <span style="padding-top: 8px;color: aliceblue;">|</span>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <p><span class="items"> Sign Up </span></p>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>                                                                                                                                                                           
    <!-- End Navbar <-->                                                          </-->
    <div class="wrapper">
        <div class="page-header clear-filter" filter-color="orange">
            <div class="page-header-image" data-parallax="true" style="background-image: url('{{asset('client/assets/img/background1.png')}}');">

            </div>
            <div class="container-fluid" >
                <div class="row">
                    <div class="col-sm-6">
                        <div class="LeftHeader">
                            <img src="{{asset('client/assets/img/img2.png')}}"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="RightHeader">
                            <p class="text-center"> <img src="{{asset('client/assets/img/logo.png')}}" width="160px"/></p>
                            <h1 class="titleTxt">ZLITEMARKET.IO</h1>
                            <p class="text-center">TRADE CRYPTOCURRECY WITH 50% OF FEES</p>
                            <div style="text-align: center;margin-top: 35px;">
                                <button class="btn btn-primary btn-round signUp" style="font-size: 17px;" type="button">
                                     Create Account
                                </button>
                                <button class="btn btn-primary btn-round signBtn" style="font-size: 17px;" type="button">
                                     Sign In
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="landing-table-container">
                            <table class="table table-hover table-sm landing-table">
                                <thead>
                                <tr>
                                    <th>Coin</th>
                                    <th>Price</th>
                                    <th>#Coins</th>
                                    <th>Seller</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row"><img src="{{asset('client/assets/img/crytoImg/aragon.png')}}" width="20px"/> Aragon(ARG)</th>
                                        <td>0.5 BTC</td>
                                        <td>1001</td>
                                        <td><img src="{{asset('client/assets/img/avatar.png')}}" width="20px"/> stooky(1005) <i class="fa fa-star" style="color: yellow;"></i> </td>
                                        <td><button class="btn btn-info table-btn">Buy Now</button></td>
                                        <td><button class="btn btn-success table-btn">Offer</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><img src="{{asset('client/assets/img/crytoImg/augur.png')}}" width="20px"/> Augur(AGR)</th>
                                        <td>0.5 BTC</td>
                                        <td>1001</td>
                                        <td><img src="{{asset('client/assets/img/avatar.png')}}" width="20px"/> stooky(1005) <i class="fa fa-star" style="color: yellow;"></i> </td>
                                        <td><button class="btn btn-info table-btn">Buy Now</button></td>
                                        <td><button class="btn btn-success table-btn">Offer</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><img src="{{asset('client/assets/img/crytoImg/decred.png')}}" width="20px"/> Decred(DCR)</th>
                                        <td>0.5 BTC</td>
                                        <td>1001</td>
                                        <td><img src="{{asset('client/assets/img/avatar.png')}}" width="20px"/> stooky(1005) <i class="fa fa-star" style="color: yellow;"></i> </td>
                                        <td><button class="btn btn-info table-btn">Buy Now</button></td>
                                        <td><button class="btn btn-success table-btn">Offer</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><img src="{{asset('client/assets/img/crytoImg/ethereum.png')}}" width="20px"/> Etherem(ETH)</th>
                                        <td>0.5 BTC</td>
                                        <td>1001</td>
                                        <td><img src="{{asset('client/assets/img/avatar.png')}}" width="20px"/> stooky(1005) <i class="fa fa-star" style="color: yellow;"></i> </td>
                                        <td><button class="btn btn-info table-btn">Buy Now</button></td>
                                        <td><button class="btn btn-success table-btn">Offer</button></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><img src="{{asset('client/assets/img/crytoImg/golem.png')}}" width="20px"/> Golem(GEM)</th>
                                        <td>0.5 BTC</td>
                                        <td>1001</td>
                                        <td><img src="{{asset('client/assets/img/avatar.png')}}" width="20px"/> stooky(1005) <i class="fa fa-star" style="color: yellow;"></i> </td>
                                        <td><button class="btn btn-info table-btn">Buy Now</button></td>
                                        <td><button class="btn btn-success table-btn">Offer</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main">

            <div class="section section-basic">
                <div class="container">
                    <h3 class="section-title">Exchangeable COINS</h3>
                    <div class="row">

                        <div class="col-sm-4 text-center">
                            <img src="{{asset('client/assets/img/crytoImg/bitcoin.png')}}" width="150px">
                        </div>
                        <div class="col-sm-4 text-center">
                            <img src="{{asset('client/assets/img/logo.png')}}" width="150px">
                        </div>
                        <div class="col-sm-4 text-center">
                            <img src="{{asset('client/assets/img/crytoImg/ethereum.png')}}" width="150px">
                        </div>

                    </div>
                    <h3 class="section-title">ICO Underwriting</h3>
                    <div class="row">
                        <div class="col-sm-4" style="padding: 0;">
                            <img src="{{asset('client/assets/img/cyber.png')}}">
                        </div>
                        <div class="col-sm-8 cyber-right">
                            <span>
                                CyberMiles finishes ICO in 48 hours,<br/>
                                84k+ ETH raised!<br/>
                                Success on first ICO underwriting!
                            </span>
                        </div>
                    </div>
                    <h3 class="section-title"> ZLITEMARKET Apps</h3>
                    <div class="row" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%;position: relative;">
                        <div class="col-sm-5" style="padding-top: 33px;padding-left: 8%;">
                            <img src="{{asset('client/assets/img/phone.png')}}" width="70%">
                        </div>
                        <div class="col-sm-7 cyber-right">
                            <p class="text-center" style="margin-bottom: 0;"><img src="{{asset('client/assets/img/logo.png')}}" width="50px"> </p>
                            <p class="text-center" style="color: #feec02;font-size: 27px;">ZLITEMARKET.IO</p>
                            <p style="text-align: center;font-size: 16px;">NOW DEVELOPING</p>
                            <p style="text-align: center;z-index: 15">
                                <img src="{{asset('client/assets/img/google.png')}}" style="height: 60px;margin-right: 27px;">
                                <img src="{{asset('client/assets/img/apple.png')}}" style="height: 60px;">
                            </p>
                        </div>
                        <div class="backdrop-div">
                        </div>
                    </div>
                    <h3 class="section-title"> FEATURES</h3>
                    <div class="row">
                        <div class="col-sm-4" style="margin-top: 30px">
                            <p class="text-center"><img src="{{asset('client/assets/img/50.png')}}" width="200px"/></p>
                        </div>
                        <div class="col-sm-4">
                            <p class="text-center"><img src="{{asset('client/assets/img/key.png')}}" width="180px"/></p>
                        </div>
                        <div class="col-sm-4" style="margin-top: 30px">
                            <p class="text-center"><img src="{{asset('client/assets/img/speed.png')}}" width="200px"/></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 feature">
                            <hr class="landing-hr"/>
                            <h3>ONLY 50% OF FEE Cryptocurrency Exchange</h3>
                            <p>
                                ZLITEMARKET is supported only 50% Trading Fees cryptocurrency exchange with vision to maximize traders' profits. Traders now can enjoy 50% trading fees for spot trading and margin trading up to 10x leverage.
                            </p>
                        </div>
                        <div class="col-sm-4 feature">
                            <hr class="landing-hr"/>
                            <h3>Crypto Assets Deposit Secured</h3>
                            <p>
                                ZLITEMARKET stores the vast majority of the crypto assets deposit in an offline multisig vault, which requires 5 out of 8 geo-distributed hardware security modules to open. Furthermore, crypto assets stored in online wallets will be backed by insurance.
                            </p>
                        </div>
                        <div class="col-sm-4 feature">
                            <hr class="landing-hr"/>
                            <h3>High Performance With Top Speed</h3>
                            <p>
                                ZLITEMARKET's proprietary order matching engine can process millions of orders with sub-millisecond latency. The whole system is designed to be fully distributed, highly available, and auto scalable, achieving the ultimate trading experience for traders around the globe.
                            </p>
                        </div>
                    </div>
                    <h3 class="section-title">GET THE LATEST</h3>
                    <div class="row">
                        <div class="text-center col-md-12">
                            <a target="_blank" href="https://www.twitter.com" class="btn social-btn btn-neutral btn-icon btn-twitter btn-round btn-lg" rel="tooltip" title="Follow us">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a target="_blank" href="https://www.facebook.com" class="btn social-btn btn-neutral btn-icon btn-facebook btn-round btn-lg" rel="tooltip" title="Like us">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                            <a target="_blank" href="https://www.linkedin.com" class="btn social-btn btn-neutral btn-icon btn-linkedin btn-lg btn-round" rel="tooltip" title="Follow us">
                                <i class="fa fa-linkedin"></i>
                            </a>
                            <a target="_blank" href="https://github.com" class="btn btn-neutral social-btn btn-icon btn-github btn-round btn-lg" rel="tooltip" title="Star on Github">
                                <i class="fa fa-github"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer" style="background-color: #343838; color: white;">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="https://zlite.io/">
                                ZLITE COIN
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Support
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright">
                    &copy; COPYRIGHT ZLITEMARKET.IO
                                    </div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="{{asset('client/assets/js/core/jquery.3.2.1.min.js')}}" type="text/javascript"></script>
<script src="{{asset('client/assets/js/core/popper.min.js')}}" type="text/javascript"></script>
<script src="{{asset('client/assets/js/core/bootstrap.min.js')}}" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="{{asset('client/assets/js/plugins/bootstrap-switch.js')}}"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="{{asset('client/assets/js/plugins/nouislider.min.js')}}" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="{{asset('client/assets/js/plugins/bootstrap-datepicker.js')}}" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="{{asset('client/assets/js/now-ui-kit.js?v=1.1.0')}}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();
    });

    function scrollToDownload() {

        if ($('.section-download').length != 0) {
            $("html, body").animate({
                scrollTop: $('.section-download').offset().top
            }, 1000);
        }
    }
</script>

</html>