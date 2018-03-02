@extends('admin.main')

@section('header')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/tables/datatable/datatables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css') }}">

@endsection

@section('content')
<div class="content-wrapper">
    <div class="content-header row">
    </div>
    <div class="content-body">
        <section id="selection-n-deletion">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">User Management</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="card-text">
                            Here You can see the detail information about the client.
                        </p>
                        
												<button id="update-row" class="btn btn-primary mr-1"><i class="ft-refresh-ccw"></i>&nbsp; Update selected Client</button>
												<button id="live-row" class="btn btn-success mr-1"><i class="ft-user-check"></i>&nbsp; Live selected Client</button>
												<button id="delete-row" class="btn btn-light mr-1"><i class="ft-user-x"></i>&nbsp; Block selected Client</button>
												
                        <br/>
                        <br/>
                        <table class="table table-striped table-bordered selection-deletion-row">
                            <thead>
                            <tr>
                                <th>Email</th>
																<th>Password</th>
																<th>Register Date</th>
																<th>Use Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $user)
                            	<tr datainfo="{{$user['id']}}">
                                <td>{{$user['email']}}</td>
                                <td>******</td>
																<td>{{$user['created_at']}}</td>
																<td>
																	@if($user['status'] == 1) 
																		<input type="checkbox" id="switchery" class="switchery" checked readonly/></td>
																	@else
																		<input type="checkbox" id="switchery" class="switchery" readonly/></td>
																	@endif
														</tr>    
                            @endforeach
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Email</th>
																<th>Password</th>
																<th>Register Date</th>
																<th>Use Status</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    </div>
</div>



<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="block-confirm-modal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Are you sure to block the selected user?</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="btn_block_conf_ok">Ok</button>
        <button type="button" class="btn btn-primary" id="btn_block_conf_cancel">Cancel</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade text-left show" id="md-update-row" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" style="display: none;" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel35"> Update Auth Info</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form method="post" id="frm_sel_md">
				<div class="modal-body">
					<fieldset class="form-group floating-label-form-group">
						<label for="email">Email Address</label>
						<input type="email" class="form-control round" id="md_sel_email" name="md_sel_email" placeholder="Email Address" required>
						<input type="hidden" class="form-control round" id="md_sel_email_h" name="md_sel_email_h"  required>
					</fieldset>
					<br>
					<fieldset class="form-group floating-label-form-group">
						<label for="title">Password</label>
						<input type="password" class="form-control round" id="md_sel_password" name="md_sel_password" placeholder="Password" required minlength="6">
					</fieldset>
					<br>
					<fieldset class="form-group floating-label-form-group">
						<label for="title">Password Confirm</label>
						<input type="password" class="form-control round" id="md_sel_password_conf" name="md_sel_password_conf" placeholder="Password Confirm" required minlength="6">
					</fieldset>
				</div>
				<div class="modal-footer">
					<input type="reset" class="btn btn-outline-secondary btn-lg" data-dismiss="modal" value="Close">
					<input type="button" class="btn btn-outline-primary btn-lg" id="btn_sel_update" value="Update">
				</div>
			</form>
		</div>
	</div>
</div>


@endsection

@section('footer')
		<!-- BEGIN PAGE VENDOR JS-->
		<script src="{{ asset('admin/app-assets/vendors/js/tables/datatable/datatables.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('admin/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js') }}"
            type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
		<script src="{{ asset('admin/js/pages/client_management.js') }}"
            type="text/javascript"></script>
@endsection