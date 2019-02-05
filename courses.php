<?php 
$pagename='Courses';
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
  <p>List all courses in a table with searching feature. Courses can be viewed and Edited.</p>
</div>


				<div class="main-content-inner">
					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-lg-8">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">View Students</h4>
									</div>
									<div class="market-status-table mt-4">
										<table class="table table-striped table-bordered table-hover table-sm dataex-html5-window" id="myTable">
											<thead>
												<tr>
													<th class="text-center">Course Code</th>
													<th class="text-center">Description</th>
													<th class="text-center">College</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
											<tfoot>
											<tr>
												<th class="text-center">Course Code</th>
												<th class="text-center">Description</th>
												<th class="text-center">College</th>
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
										<h4 class="header-title mb-0">Add Courses</h4>
									</div>
									<div class="market-status-table mt-4">
										<form id="addStudent" action="server_side/add_student.php" method="POST">
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">College</label>
												<div class="col-sm-12">
													<select class="form-control">
											      <option>1</option>
											      <option>2</option>
											      <option>3</option>
											      <option>4</option>
											      <option>5</option>
											    </select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">Course Description</label>
												<div class="col-sm-12">
													<input type="text" class="form-control" name="lname" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-12 col-form-label">Course Code</label>
												<div class="col-sm-12">
													<input type="text" class="form-control" name="gender" />
												</div>
											</div>
											<div class="form-group row">
												<div class="col-sm-6 offset-sm-3">
													<!-- Do NOT use name="submit" or id="submit" for the Submit button -->
													<button type="submit" class="btn btn-primary" name="submitted">Add Student</button>
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
		</script>
	</body>
</html>
