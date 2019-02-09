<?php 
$pagename='Students';
include('header.php'); ?>
				<!-- Breadcrumb and user panel BEGIN -->
				<div class="page-title-area">
					<div class="row align-items-center">
						<div class="col-sm-6">
							<div class="breadcrumbs-area clearfix">
								<!-- Editing of breadcrumbs here -->
								<h4 class="page-title pull-left">Edit Student</h4>
								<ul class="breadcrumbs pull-left">
									<li><a href="students.php">Student</a></li>
									<li><span>Edit Student</span></li>
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

				<div class="main-content-inner">
					<!-- Edit student panel BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Edit Student</h4>
									</div>
									<div class="market-status-table mt-4">
										<form id="addStudent" action="server_side/add_student.php" method="POST">
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Full name</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="fname" placeholder="First name" />
												</div>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="mname" placeholder="Middle name" />
												</div>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="lname" placeholder="Last name" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Address</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="address" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Gender</label>
												<div class="col-sm-3">
													<select class="form-control" name="gender">
											      <option>Admin</option>
											      <option>Program Chair</option>
											    </select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Birtdate</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="birthdate" />
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Mother's Name</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="motherName" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Father's Name</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="fatherName" />
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Student ID</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="student_id" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">College</label>
												<div class="col-sm-3">
													<select class="form-control" name="college">
											      <option>1</option>
											      <option>2</option>
											      <option>3</option>
											      <option>4</option>
											      <option>5</option>
											    </select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Course</label>
												<div class="col-sm-3">
													<select class="form-control" name="course">
											      <option>1</option>
											      <option>2</option>
											      <option>3</option>
											      <option>4</option>
											      <option>5</option>
											    </select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Curriculum</label>
												<div class="col-sm-3">
													<select class="form-control" name="curriculum">
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
													<input type="hidden" name="go_submit" value="student">
													<button type="submit" class="btn btn-primary">Add Student</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Edit student panel END -->
					

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
    FormValidation.formValidation(
        document.getElementById('addStudent'),
        {
            fields: {
                fname: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                mname: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                lname: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                address: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                gender: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                birthdate: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                motherName: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                fatherName: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                student_id: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                college: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                course: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
                curriculum: {
                    validators: {
                        notEmpty: {
                            message: 'Cannot be empty'
                        }
                    }
                },
            },
            plugins: {
            	autoFocus: new FormValidation.plugins.AutoFocus(),
                trigger: new FormValidation.plugins.Trigger(),
                bootstrap: new FormValidation.plugins.Bootstrap(),
                submitButton: new FormValidation.plugins.SubmitButton(),
                defaultSubmit: new FormValidation.plugins.DefaultSubmit(),
                bootstrap: new FormValidation.plugins.Bootstrap({
                    rowSelector: function(field, ele) {
                        // field is the field name
                        // ele is the field element
                        switch (field) {
                            case 'firstName':
                            case 'lastName':
                                return '.col-sm-3';
                            
                            default:
                                return '.form-group';
                        }
                    }
                }),
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
