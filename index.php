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
								<ul class="breadcrumbs pull-left">
									<li><a href="index.html">Home</a></li>
									<li><span>Dashboard</span></li>
								</ul>
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


<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">To do's</h4>
  <p>Create a table where recent evaluated students is listed with options to view student's Grade or View Personal Info. Provide 3 meaningful insights like 'Top Performing Students', 'Evaluated Students for the Month', 'Top Subjects'. With clickable links.</p>
  <hr>
</div>


				<div class="main-content-inner">
					<!-- Summary BEGIN -->
					<div class="sales-report-area mt-5 mb-5">
						<div class="row">
							<div class="col-md-4">
								<div class="single-report mb-xs-30">
									<div class="s-report-inner pr--20 pt--30 mb-3">
										<div class="icon"></div>
										<div class="s-report-title d-flex justify-content-between">
											<h4 class="header-title mb-0">Evaluated Students Today</h4>
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
											<h4 class="header-title mb-0">Top Performing Students</h4>
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
											<h4 class="header-title mb-0">Most Enrolled Subject</h4>
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
										<h4 class="header-title mb-0">Most Recent Evaluation</h4>
									</div>
									<div class="market-status-table mt-4">
										<table class="table table-striped table-bordered table-hover table-sm dataex-html5-window" id="myTable">
											<thead>
												<tr>
													<th class="text-center">Student ID</th>
													<th class="text-center">Name</th>
													<th class="text-center">Curriculum</th>
													<th class="text-center">Course</th>
													<th class="text-center">Last Evaluated</th>
													<th class="text-center">Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
												<tr>
													<td>200613113801</td>
													<td>Jhan Rey Gonzales</td>
													<td>BSCS 2014</td>
													<td>BSCS</td>
													<td>January 16, 2014</td>
													<td>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-edit"></span></button>
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-search"></button>
													</td>
												</tr>
											</tbody>
											<tfoot>
											<tr>
												<th class="text-center">Student ID</th>
												<th class="text-center">Name</th>
												<th class="text-center">Curriculum</th>
												<th class="text-center">Course</th>
												<th class="text-center">Date Admitted</th>
												<th class="text-center">Actions</th>
											</tr>
											</tfoot>
										</table>
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
        FormValidation.formValidation(document.getElementById('demoForm'),
          {
            fields: {
              fname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
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
                    bootstrap: new FormValidation.plugins.Bootstrap({
                   		rowSelector: function(field, ele) {
				                // field is the field name
				                // ele is the field element
				                switch (field) {
				                    case 'firstName':
				                    case 'lastName':
				                        return '.col-sm-4';
				                    case 'city':
				                    case 'state':
				                    case 'zipcode':
				                        return '.col-sm-3';
				                    default:
				                        return '.form-group';
				                }
				            }
                    }),

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
