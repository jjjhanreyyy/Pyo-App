<?php 
$pagename='Subjects';
include('header.php'); ?>
				<!-- Breadcrumb and user panel BEGIN -->
				<div class="page-title-area">
					<div class="row align-items-center">
						<div class="col-sm-6">
							<div class="breadcrumbs-area clearfix">
								<!-- Editing of breadcrumbs here -->
								<h4 class="page-title pull-left">Dashboard</h4>
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
  <h4 class="alert-heading">To do's</h4>
  <p>List all subjects in a table with searching feature. Courses can be viewed and Edited.</p>
</div>


				<div class="main-content-inner">
					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-lg-8">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">View Subjects</h4>
									</div>
									<div class="market-status-table mt-4">
										<table class="table table-striped table-bordered table-hover table-sm dataex-html5-window" id="myTable">
											<thead>
												<tr>
													<th class="text-center">Subject Code</th>
													<th class="text-center">Description</th>
													<th class="text-center">Prerequisite</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
											<tfoot>
												<tr>
													<th class="text-center">Subject Code</th>
													<th class="text-center">Description</th>
													<th class="text-center">Prerequisite</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Add Subjects</h4>
									</div>
									<div class="market-status-table mt-4">
										<form id="addSubject" action="server_side/add_subject.php" method="POST">
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">Subject Code</label>
												<div class="col-sm-12">
													<input type="text" class="form-control" name="subject_code" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">Subject Description</label>
												<div class="col-sm-12">
													<input type="text" class="form-control" name="subject_description" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">Prerequisite</label>
												<div class="col-sm-12">
													<select class="form-control" name="prerequisite">
											      <option>NONE</option>
											      <option>1</option>
											      <option>2</option>
											      <option>3</option>
											      <option>4</option>
											      <option>5</option>
											    </select>
												</div>
											</div>
											<div class="form-group row">
												<div class="col-sm-6 offset-sm-3">
													<!-- Do NOT use name="submit" or id="submit" for the Submit button -->
													<input type="hidden" name="go_submit">
													<button type="submit" class="btn btn-primary" name="submitted">Add Subject</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Column 12 END -->

		<?php include('footer.php'); ?>
		<script>
			$('#myTable').DataTable({
				// "processing": true,
    //     "serverSide": true,
    //     "ajax": "../server_side/dt_dummy.php"
				responsive: true,
		      "columnDefs": [
		            {
		                // "targets": [4,5],
		            //     // "visible": false,
		                // "searchable": false,
		                // "className": "none"
		            }
		        ]
			});


			document.addEventListener('DOMContentLoaded', function(e) {
    FormValidation.formValidation(
        document.getElementById('addSubject'),
        {
            fields: {
                subject_description: {
                    validators: {
                        notEmpty: {
                            message: 'The name is required'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: 'The name must be more than 6 and less than 30 characters long'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_ ]+$/,
                            message: 'The name can only consist of alphabetical, number and underscore'
                        }
                    }
                },
                subject_code: {
                    validators: {
                        notEmpty: {
                            message: 'The name is required'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: 'The name must be more than 6 and less than 30 characters long'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_ ]+$/,
                            message: 'The name can only consist of alphabetical, number and underscore'
                        }
                    }
                }
            },
            plugins: {
                trigger: new FormValidation.plugins.Trigger(),
                bootstrap: new FormValidation.plugins.Bootstrap(),
                submitButton: new FormValidation.plugins.SubmitButton(),
                defaultSubmit: new FormValidation.plugins.DefaultSubmit(),

                icon: new FormValidation.plugins.Icon({
                    valid: 'fa fa-check',
                    invalid: 'fa fa-times',
                    validating: 'fa fa-refresh'
                }),
            },
        }
    );
});


		</script>
	</body>
</html>
