<?php 
$pagename='Students';
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
					<!-- Add student panel BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Add Student</h4>
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
													<input type="text" class="form-control" name="lname" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Gender</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="gender" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Birtdate</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" name="address" />
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
													<input type="text" class="form-control" name="fatherName" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Course</label>
												<div class="col-sm-3">
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
												<label class="col-sm-2 col-form-label">Course</label>
												<div class="col-sm-3">
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
												<label class="col-sm-2 col-form-label">Curriculum</label>
												<div class="col-sm-3">
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
					<!-- Add studen panel END -->
					
					<!-- Column 12 BEGIN -->
					<div class="row mt-5 mb-5">
						<div class="col-12">
							<div class="card">
								<div class="card-body border-primary">
									<div class="d-sm-flex justify-content-between align-items-center">
										<h4 class="header-title mb-0">Students</h4>
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
												            <?php 
                include ('server_side/connection.php');
                $sql = "SELECT * FROM tbl_students";
                $result=mysqli_query($conn, $sql);
              ?>
              <?php while ($row=mysqli_fetch_array($result)) { ?>
												<tr>
													<td><?php echo $row['student_id'];?></td>
													<td><?php echo $row['fname'].' '. $row['lname'];?></td>
													<td><?php echo $row['student_id'];?></td>
													<td><?php echo $row['course'];?></td>
													<td><?php echo $row['date_admitted'];?></td>
													<td>
														<button class="btn btn-sm btn-primary"><span class="fa fa-edit"></span></button>
														<button class="btn btn-sm btn-primary"><span class="fa fa-search"></span></button>
													</td>
												</tr>
							</td><?php } ?>
												
											</tfoot>
										</table>
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
		</script>
	</body>
</html>
