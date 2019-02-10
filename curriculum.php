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
						<form action="" id="demoForm">
							<div class="form-group row">
								<label for="staticEmail" class="col-sm-2 col-form-label">Course</label>
								<div class="col-sm-3">
									<select id="inputState" class="form-control">
										<option selected>Choose...</option>
										<option>...</option>
									</select>
								</div>
							</div>
							<table class="table table-bordered table-hover table-sm">
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
												<select class="form-control form-control-sm mySelect2 " name="111" id="111">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_111"></span></td>
									<td><span id="prerequisite_111"></span></td>
									<td><span id="unit_111"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="112" id="112">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_112"></span></td>
									<td><span id="prerequisite_112"></span></td>
									<td><span id="unit_112"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="113" id="113">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_113"></span></td>
									<td><span id="prerequisite_113"></span></td>
									<td><span id="unit_113"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="114" id="114">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_114"></span></td>
									<td><span id="prerequisite_114"></span></td>
									<td><span id="unit_114"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="115" id="115">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_115"></span></td>
									<td><span id="prerequisite_115"></span></td>
									<td><span id="unit_115"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="116" id="116">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_116"></span></td>
									<td><span id="prerequisite_116"></span></td>
									<td><span id="unit_116"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="117" id="117">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_117"></span></td>
									<td><span id="prerequisite_117"></span></td>
									<td><span id="unit_117"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="118" id="118">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_118"></span></td>
									<td><span id="prerequisite_118"></span></td>
									<td><span id="unit_118"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="119" id="119">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_119"></span></td>
									<td><span id="prerequisite_119"></span></td>
									<td><span id="unit_11"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group row mb-0" >
											<div class="col-12">
												<select class="form-control form-control-sm mySelect2 " name="110" id="110">
													<?php
													include ('server_side/connection.php');
													$sql = "SELECT * FROM tbl_subjects";
													$result=mysqli_query($conn, $sql);
													while ($row=mysqli_fetch_array($result)) { ?>
													<option value="<?php echo $row['subject_code'];?>"><?php echo $row['subject_code'];?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									</td>
									<td><span id="description_110"></span></td>
									<td><span id="prerequisite_110"></span></td>
									<td><span id="unit_110"></span></td>
								</tr>
							</table>
							<button type="submit">SUBMIT</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Column 12 END -->
		<?php include('footer.php'); ?>
		<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
		<script>
		$(document).ready(function(){
		$("#111").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_111").html(result);
				}
			});
		});
		$("#111").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_111").html(result);
				}
			});
		});
		$("#111").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_111").html(result);
				}
			});
		});


// TWO


		$("#112").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_112").html(result);
				}
			});
		});
		$("#112").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_112").html(result);
				}
			});
		});
		$("#112").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_112").html(result);
				}
			});
		});

		//THREE
				$("#113").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_113").html(result);
				}
			});
		});
		$("#113").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_113").html(result);
				}
			});
		});
		$("#113").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_113").html(result);
				}
			});
		});
		// FOUR
						$("#114").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_114").html(result);
				}
			});
		});
		$("#114").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_114").html(result);
				}
			});
		});
		$("#114").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_114").html(result);
				}
			});
		});


// FIVE
$("#115").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_115").html(result);
				}
			});
		});
		$("#115").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_115").html(result);
				}
			});
		});
		$("#115").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_115").html(result);
				}
			});
		});

		// SIX

	$("#116").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_116").html(result);
				}
			});
		});
		$("#116").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_116").html(result);
				}
			});
		});
		$("#116").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_116").html(result);
				}
			});
		});

		// SEVEN

		$("#117").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_117").html(result);
				}
			});
		});
		$("#117").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_117").html(result);
				}
			});
		});
		$("#117").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_117").html(result);
				}
			});
		});

		// EIGHT
		$("#118").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectdesc.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#description_118").html(result);
				}
			});
		});
		$("#118").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectpreq.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#prerequisite_118").html(result);
				}
			});
		});
		$("#118").change(function(){
			var subject_code = $(this).val();
			$.ajax({
				type: "POST",
				url: "server_side/load_subjectunit.php",
				data: {subject_code: subject_code},
				success: function(result){
				$("#unit_118").html(result);
				}
			});
		});
		});

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