<?php 
$pagename='Dashboard';
include('header.php'); ?>
				<!-- Breadcrumb and user panel BEGIN -->
				<div class="page-title-area">
					<div class="row align-items-center">
						<div class="col-sm-6">
							<div class="breadcrumbs-area clearfix">
								<!-- Editing of breadcrumbs here -->
								<h4 class="page-title pull-left">Dashboard</h4>
<!-- 								<ul class="breadcrumbs pull-left">
									<li><a href="index.html">Home</a></li>
									<li><span>Dashboard</span></li>
								</ul> -->
							</div>
						</div>
						<div class="col-sm-6 clearfix">
							<div class="user-profile pull-right">
								<h4 class="user-name dropdown-toggle" data-toggle="dropdown">J. Gonzales<i class="fa fa-angle-down"></i></h4>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="settings.html">Settings</a>
									<a class="dropdown-item" href="login.html">Log Out</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Breadcrumb and user panel END -->




				<div class="main-content-inner">
					<!-- Summary BEGIN -->
					<div class="sales-report-area mt-5 mb-5">
						<div class="row">
							<div class="col-md-4">
								<div class="single-report mb-xs-30">
									<div class="s-report-inner pr--20 pt--30 mb-3">
										<div class="icon"></div>
										<div class="s-report-title d-flex justify-content-between">
											<h4 class="header-title mb-0">Enrolled Students</h4>
											<p>BSIT</p>
										</div>
										<div class="d-flex justify-content-between pb-2">
											<h2>$ 4567809,987</h2>
											<span>- 45.87</span>
										</div>
									</div>
									<canvas id="coin_sales1" height="100"></canvas>
								</div>
							</div>
							<div class="col-md-4">
								<div class="single-report mb-xs-30">
									<div class="s-report-inner pr--20 pt--30 mb-3">
										<div class="icon"><i class="fa fa-btc"></i></div>
										<div class="s-report-title d-flex justify-content-between">
											<h4 class="header-title mb-0">Bitcoin Dash</h4>
											<p>24 H</p>
										</div>
										<div class="d-flex justify-content-between pb-2">
											<h2>$ 4567809,987</h2>
											<span>- 45.87</span>
										</div>
									</div>
									<canvas id="coin_sales2" height="100"></canvas>
								</div>
							</div>
							<div class="col-md-4">
								<div class="single-report">
									<div class="s-report-inner pr--20 pt--30 mb-3">
										<div class="icon"><i class="fa fa-eur"></i></div>
										<div class="s-report-title d-flex justify-content-between">
											<h4 class="header-title mb-0">Euthorium</h4>
											<p>24 H</p>
										</div>
										<div class="d-flex justify-content-between pb-2">
											<h2>$ 4567809,987</h2>
											<span>- 45.87</span>
										</div>
									</div>
									<canvas id="coin_sales3" height="100"></canvas>
								</div>
							</div>
						</div>
					</div>
					<!-- Summary END -->

					<!-- Add student panel BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Add Student</h4>
									</div>
									<div class="market-status-table mt-4">
										<form id="addStudent" action="serverSide/add_student.php" method="POST">
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">First name</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="fname" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Middle name</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="mname" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Last name</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="lname" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Birthdate</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="birthdate" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Address</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="address" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Mother's Name</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="motherName" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Father's Name</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="fatherName" />
												</div>
											</div>
											<div class="form-group row">
												<div class="col-sm-9 offset-sm-3">
													<!-- Do NOT use name="submit" or id="submit" for the Submit button -->
													<button type="submit" class="btn btn-primary">Add product</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Add studen panel END -->

		<?php include('footer.php'); ?>
		<script>
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


			    	document.addEventListener('DOMContentLoaded', function(e) {
        FormValidation.formValidation(document.getElementById('addStudent'),
          {
            fields: {
              fname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 2,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z ]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              lname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              mname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              birthdate: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              address: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              motherName: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              fatherName: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
                price: {
                  validators: {
                    notEmpty: {
                      message: 'The price is required'},
                         numeric: {
                           message: 'The price must be a number'
                            }
                        }
                    },
                    'size[]': {
                      validators: {
                        notEmpty: {
                          message: 'The size is required'
                        }
                      }
                    },
                    availability: {
                      validators: {
                        notEmpty: {
                          message: 'The availability option is required'
                        }
                      }
                    },
                  },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    bootstrap: new FormValidation.plugins.Bootstrap(),
                    submitButton: new FormValidation.plugins.SubmitButton(),
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
