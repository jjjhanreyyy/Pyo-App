<?php
$pagename='Curriculum';
include('header.php'); ?>
<!-- Breadcrumb and user panel BEGIN -->

<div class="page-title-area">
	<div class="row align-items-center">
		<div class="col-sm-6">
			<div class="breadcrumbs-area clearfix">
				<!-- Editing of breadcrumbs here -->
				<h4 class="page-title pull-left">Curriculum</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="index.php">Home</a></li>
					<li><span>Dashboard</span></li>
				</ul>
			</div>
		</div>
		<div class="col-sm-6 clearfix">
			<div class="user-profile pull-right">
				<h4 class="user-name dropdown-toggle" data-toggle="dropdown">J. Gonzales<i class="fa fa-angle-down"></i></h4>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="settings.php">Settings</a>
					<a class="dropdown-item" href="login.php">Log Out</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb and user panel END -->
<div class="alert alert-success" role="alert">
	<h4 class="alert-heading">To do's'</h4>
	<p>Create a table where all curriculuns are listed. Create a full-width column to add new curriculum</p>
	<hr>
</div>
<div class="main-content-inner">
	<!-- Column 12 BEGIN -->
	<div class="row mt-5 mb-5">
		<div class="col-12">
			<div class="card">
				<div class="card-body border-primary">
					<div class="d-sm-flex justify-content-between align-items-center">
						<h4 class="header-title mb-0">Add Curriculum</h4>
					</div>
					<div class="market-status-table mt-4">
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Course</label>
							<div class="col-sm-3">
								<select id="inputState" class="form-control">
									<option selected>Choose...</option>
									<option>...</option>
								</select>
							</div>
						</div>
						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-primary" colspan="5">First Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-primary" colspan="5">First Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm mySelect2 ">
												<option class="text-center" value="admin">Admin</option>
												<option class="text-center" value="xx">Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-primary" colspan="5">First Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-primary" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-danger" colspan="5">Second Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-danger" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-danger" colspan="5">Second Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-danger" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-success" colspan="5">3rd Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-success" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-success" colspan="5">3rd Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-success" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-info" colspan="5">4th Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-info" colspan="5">First Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>

						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center bg-info" colspan="5">4th Year</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center bg-info" colspan="5">Second Semester</th>
								</tr>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 25%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Pre-requisite</th>
									<th style="min-width: 100px">Units</th>
								</tr>
							</thead>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<div class="form-group row mb-0" >
										<div class="col-12">
											<select class="form-control form-control-sm">
												<option>Admin</option>
												<option>Program Chair</option>
											</select>
										</div>
									</div>
								</td>
								<td class="text-left">Subject Description1 </td>
								<td>CS105</td>
								<td>3</td>
							</tr>
						</table>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Column 12 END -->
	<?php include('footer.php'); ?>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
	<script>
    $('.mySelect2').select2();


		$('#myTable').DataTable({
			// "processing": true,
	//     "serverSide": true,
	//     "ajax": "../server_side/dt_dummy.php"
			responsive: true,
	"columnDefs": [
	{
	"targets": [4,5],
	//     // "visible": false,
	"searchable": false,
	// "className": "none"
	}
	]
		});
	</script>
</body>
</html>