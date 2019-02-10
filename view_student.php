<?php 
$pagename='View Student';
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
  <p>Create a table where all students are listed with options to Edit/Evaluate, View Personal Info. and View Grade. Create a full-width column to add new students.</p>
  <hr>
</div>

				<div class="main-content-inner">

					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Students</h4>
									</div>
									<div class="market-status-table mt-4">
										<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="personal-tab" data-toggle="tab" href="#personal" role="tab" aria-controls="personal" aria-selected="true">Personal Info</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="grades-tab" data-toggle="tab" href="#grades" role="tab" aria-controls="grades" aria-selected="false">Grades</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="personal" role="tabpanel" aria-labelledby="personal-tab">
  	<div class="card">
			<div class="card-body">
				<div class="invoice-area">
					<div class="row">
						<div class="col-md-6">
							<ul class="invoice-date">
								<li>Name	 : <strong">Jhan Rey L. Gonzales</strong></li>
								<li>Course : BSCS</li>
							</ul>
						</div>
						<div class="col-md-6 text-md-right">
							<ul class="invoice-date">
								<li>Date of Admission	: January 2018</li>
							</ul>
						</div>
					</div>
					<div class="invoice-table table-responsive mt-5">
						
					</div>
				</div>
				<div class="invoice-buttons text-right">
					<a href="#" class="invoice-btn">print invoice</a>
					<a href="#" class="invoice-btn">send invoice</a>
				</div>
			</div>
		</div>
  </div>
  <div class="tab-pane fade" id="grades" role="tabpanel" aria-labelledby="grades-tab">
  	<div class="card">
			<div class="card-body">
				<div class="invoice-area">
					<div class="invoice-head">
						<div class="row">
							<div class="col-md-12 text-center">
								<span class="">Isabela State University</span> <br>
								<span class="">Cauayan Campus</span> <br>
								<span class="">PERMANENT RECORD</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<ul class="invoice-date">
								<li>NAme	 : <strong">Jhan Rey L. Gonzales</strong></li>
								<li>Course : BSCS</li>
							</ul>
						</div>
						<div class="col-md-6 text-md-right">
							<ul class="invoice-date">
								<li>Date of Admission	: January 2018</li>
							</ul>
						</div>
					</div>
					<div class="invoice-table table-responsive mt-5">
						<table class="table table-bordered table-hover text-right table-sm">
							<thead>
								<tr class="text-capitalize">
									<th class="text-center" style="width: 15%;">Course Code</th>
									<th class="text-left" style="width: 50%; min-width: 130px;">Descriptive Title</th>
									<th>Grade</th>
									<th style="min-width: 100px">Re-exam</th>
									<th>Remarks</th>
								</tr>
							</thead>
							<tr class="text-capitalize">
								<th class="text-center bg-primary" colspan="5">First Year</th>
							</tr>
							<tr class="text-capitalize">
								<th class="text-center bg-primary" colspan="5">First Semester</th>
							</tr>
							<tbody>
								<tr>
									<td class="text-center">Program1</td>
									<td class="text-left">Crazy Toys</td>
									<td>1</td>
									<td>$20</td>
									<td>$40</td>
								</tr>
								<tr>
									<td class="text-center">2</td>
									<td class="text-left">Beautiful flowers</td>
									<td>2</td>
									<td>$50</td>
									<td>$100</td>
								</tr>
							</tbody>
<!-- 							<tfoot>
							<tr>
								<td colspan="4">CurrentGeneral Weighted Average</td>
								<td>$140</td>
							</tr>
							</tfoot> -->
						</table>
					</div>
				</div>
				<div class="invoice-buttons text-right">
					<a href="#" class="invoice-btn">print invoice</a>
					<a href="#" class="invoice-btn">send invoice</a>
				</div>
			</div>
		</div>
  </div>
</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Column 12 END -->

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirm Student Info</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal">Edit</button>
        <button type="button" class="btn btn-primary">Confirm</button>
      </div>
    </div>
  </div>
</div>				


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
