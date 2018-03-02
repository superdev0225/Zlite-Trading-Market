
<!-- fixed-top-->
<nav class="header-navbar navbar-expand-md navbar navbar-with-menu fixed-top navbar-semi-dark navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mobile-menu d-md-none mr-auto"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu font-large-1"></i></a></li>
                <li class="nav-item">
                    <a href="{{route('admin_index')}}" class="navbar-brand">
                        <img alt="stack admin logo" src="{{ asset('client/images/logo.png') }}"
                             class="brand-logo" style="width: auto;height: 40px;">
                        <h2 class="brand-text" style="color:#feec02;">MARKET</h2>
                    </a>
                </li>
                <li class="nav-item d-md-none">
                    <a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="fa fa-ellipsis-v"></i></a>
                </li>
            </ul>
        </div>
        <div class="navbar-container content">
            <div id="navbar-mobile" class="collapse navbar-collapse">
                <ul class="nav navbar-nav mr-auto float-left">
                    <li class="nav-item d-none d-md-block"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu"></i></a></li>
                    <li class="nav-item d-none d-md-block"><a href="#" class="nav-link nav-link-expand"><i class="ficon ft-maximize"></i></a></li>
                </ul>
                <ul class="nav navbar-nav float-right">
                    <li class="dropdown dropdown-user nav-item">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link">
                            <span class="avatar avatar-online">
                            <img src="{{ asset('admin/app-assets/images/portrait/small/avatar-s-1.png') }}" alt="avatar"><i></i></span>
                            <span class="user-name">Administrator</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a href="{{route('auth.admin.logout')}}" class="dropdown-item"><i class="ft-power"></i> Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- ////////////////////////////////////////////////////////////////////////////-->
<div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
    <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
            <li class=" navigation-header">
                <span>General</span><i data-toggle="tooltip" data-placement="right" data-original-title="General"
                                       class=" ft-minus"></i>
            </li>
            <li class=" nav-item"><a href="{{$base_url}}administration"><i class="ft-home"></i><span data-i18n="" class="menu-title">DashBoard</span></a>
            </li>
            <li class=" nav-item"><a href="{{$base_url}}admin/user"><i class="ft-user"></i><span data-i18n="" class="menu-title">User Management</span></a>
            </li>
        </ul>
    </div>
</div>



		
							
							
							
							
							
							