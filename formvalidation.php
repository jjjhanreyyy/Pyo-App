<?php 
$pagename='Formvalidation';
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
									<a class="dropdown-item" href="login.html">Log Out</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Breadcrumb and user panel END -->

											<div class="col-lg-12 mt-5">
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
                                            <tfoot>
                                                <tr>
                                                    <td colspan="4">total balance :</td>
                                                    <td>$140</td>
                                                </tr>
                                            </tfoot>
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


				<div class="main-content-inner">
					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">DataTables</h4>
									</div>
									<div class="market-status-table mt-4">
										<form id="demoForm" method="POST" action="server_side/test.php">
<div class="form-group row">
            <label class="col-sm-3 col-form-label">Full name</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="firstName" placeholder="First name" />
            </div>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="lastName" placeholder="Last name" />
            </div>
        </div>



        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Price</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">$</span>
                    </div>
                    <input type="text" class="form-control" name="price" />
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Size</label>
            <div class="col-sm-6">
                <div class="form-check form-check-inline">
                    <input type="checkbox" class="form-check-input" name="size[]" value="s" />
                    <label class="form-check-label">S</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="checkbox" class="form-check-input" name="size[]" value="m" />
                    <label class="form-check-label">M</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="checkbox" class="form-check-input" name="size[]" value="l" />
                    <label class="form-check-label">L</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="checkbox" class="form-check-input" name="size[]" value="xl" />
                    <label class="form-check-label">XL</label>
                </div>
            </div>
        </div>
<div class="form-group row">
            <label class="col-sm-2 col-form-label">Full name</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="firstName" placeholder="First name" />
            </div>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="lastName" placeholder="Last name" />
            </div>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="lastName" placeholder="Last name" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Available in store</label>
            <div class="col-sm-6">
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" name="availability" value="yes" />
                    <label class="form-check-label">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" name="availability" value="no" />
                    <label class="form-check-label">No</label>
                </div>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-9 offset-sm-3">
                <!-- Do NOT use name="submit" or id="submit" for the Submit button -->
                <button type="submit" class="btn btn-primary" name="sub">Add product</button>
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
		                "targets": [4,5],
		            //     // "visible": false,
		                "searchable": false,
		                // "className": "none"
		            }
		        ]
			});
		</script>
		<script>
document.addEventListener('DOMContentLoaded', function(e) {
    FormValidation.formValidation(
        document.getElementById('demoForm'),
        {
            fields: {
                name: {
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
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: 'The name can only consist of alphabetical, number and underscore'
                        }
                    }
                },
                price: {
                    validators: {
                        notEmpty: {
                            message: 'The price is required'
                        },
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
