<?php 
$pagename='Test DataTables';
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



				<div class="main-content-inner">
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
					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">DataTables</h4>
									</div>
									<div class="market-status-table mt-4">
										<table class="table table-striped table-bordered table-hover table-sm dataex-html5-window" id="myTable">
											<thead>
												<tr>
													<th class="text-center">Student ID</th>
													<th class="text-center">Name</th>
													<th class="text-center">Curriculum</th>
													<th class="text-center">Course</th>
													<th class="text-center">Date Admitted</th>
													<th class="text-center">Actions</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>200613113800</td>
													<td>Cara Stevens</td>
													<td>BSIT 2018</td>
													<td>BSIT</td>
													<td>January 12, 2018</td>
													<td>
														<button>View</button>
														<button>Edit</button>
														<button>Grades</button>
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
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-dashboard"></button>
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
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-dashboard"></button>
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
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-dashboard"></button>
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
														<button type="button" class="btn btn-outline-primary btn-sm"><span class="fa fa-dashboard"></button>
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
	</body>
</html>
