@extends('admin.main')

@section('content')
<div class="content-wrapper">
    <div class="content-header row">
    </div>
    <div class="content-body">
        <!-- Analytics spakline & chartjs  -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-12">
                <div class="card">
                    <div class="card-header border-0-bottom">
                        <h4 class="card-title">Week Overview</h4>
                        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row my-1">
                                <div class="col-lg-4 col-12">
                                    <div class="text-center">
                                        <h3>{{$regist_clients_cnt_w}}</h3>
                                        <p class="text-muted">Registered Clients</p>
                                        <div id="sp-tristate-bar-total-revenue"></div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-12">
                                    <div class="text-center">
                                        <h3>{{$block_clients_cnt_w}}</h3>
                                        <p class="text-muted">Blocked Clients</p>
                                        <div id="sp-stacked-bar-total-sales"></div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-12">
                                    <div class="text-center">
                                        <h3>{{$total_clients_cnt_w}}</h3>
                                        <p class="text-muted">Total Clients</p>
                                        <div id="sp-bar-total-cost"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="chartjs">
                                        <canvas id="line-stacked-area" height="300"></canvas>
                                    </div>
                                    <ul class="list-inline text-center mt-1">
                                        <li class="mr-1">
                                            <h6><i class="fa fa-circle success"></i>
                                                <span>Registered Client</span>
                                            </h6>
                                        </li>
                                        <li class="mr-1">
                                            <h6><i class="fa fa-circle danger"></i>
                                                <span>Blocked Client</span>
                                            </h6>
                                        </li>
                                        <li class="mr-1">
                                            <h6><i class="fa fa-circle warning"></i>
                                                <span>Total Client</span>
                                            </h6>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ Analytics spakline & chartjs  -->
        <!--stats-->
        <div class="row">
            <div class="col-xl-3 col-lg-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media">
                                <div class="media-body text-left w-100">
                                    <h3 class="primary">{{$total_clients_cnt}}</h3>
                                    <span>Total Client</span>
                                </div>
                                <div class="media-right media-middle">
                                    <i class="icon-user-follow primary font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress progress-sm mt-1 mb-0">
                                <div class="progress-bar bg-primary" role="progressbar" style="width: {{$total_clients_percent}}%" aria-valuenow="25"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media">
                                <div class="media-body text-left w-100">
                                    <h3 class="success">{{$finished_clients_cnt}}</h3>
                                    <span>Live Client</span>
                                </div>
                                <div class="media-right media-middle">
                                    <i class="icon-social-dropbox success font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress progress-sm mt-1 mb-0">
                                <div class="progress-bar bg-success" role="progressbar" style="width: {{$finished_clients_percent}}%" aria-valuenow="25"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media">
                                <div class="media-body text-left w-100">
                                    <h3 class="danger">{{$submit_clients_cnt}}</h3>
                                    <span>Blocked Client</span>
                                </div>
                                <div class="media-right media-middle">
                                    <i class="icon-layers danger font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress progress-sm mt-1 mb-0">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: {{$submit_clients_percent}}%" aria-valuenow="25"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media">
                                <div class="media-body text-left w-100">
                                    <h3 class="warning">{{$nonsubmit_clients_cnt}}</h3>
                                    <span>ZXL Client</span>
                                </div>
                                <div class="media-right media-middle">
                                    <i class="icon-globe warning font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress progress-sm mt-1 mb-0">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: {{$nonsubmit_clients_percent}}%" aria-valuenow="25"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/stats-->
        <!-- Audience by country & users visit-->
        <div class="row match-height">
            <div class="col-xl-6 col-lg-12">
                <div class="card">
                    <div class="card-header border-0">
                        <h4 class="card-title">New Registered Clients</h4>
                        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content">
                        <div id="goal-list-scroll" class="table-responsive height-250 position-relative">
                            <table class="table mb-0">
                                <thead>
                                <tr>
                                    <th>Email</th>
																		<th>Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($new_reg_users as $client)
                                <tr>
                                    <td>{{$client->email}}</td>
																		<td>{{$client->created_at}}</td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-12">
                <div class="card">
                    <div class="card-header border-0">
                        <h4 class="card-title">New Blocked Clients</h4>
                        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content">
                        <div id="goal-list-scroll" class="table-responsive height-250 position-relative">
                            <table class="table mb-0">
                                <thead>
                                <tr>
                                    <th>Email</th>
                                    <th>Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($new_block_users as $client)
                                <tr>
                                    <td>{{$client->email}}</td>
                                    <td>{{$client->updated_at}}</td>
                                </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ Audience by country  & users visit -->

    </div>
</div>
@endsection

@section('footer')
    <!-- BEGIN PAGE LEVEL JS-->
    <script>
        var chart_label = <?php echo json_encode($chartinfo['label']); ?>;
        var chart_registered = <?php echo json_encode($chartinfo['registered']); ?>;
        var chart_blocked = <?php echo json_encode($chartinfo['blocked']); ?>;
        var chart_submit = <?php echo json_encode($chartinfo['submit']); ?>;
    </script>

    <script src="{{ asset('admin/js/pages/dashboard.js') }}" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->

@stop