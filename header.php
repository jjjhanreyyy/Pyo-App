<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title><?php echo $pagename; ?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
		<link rel="stylesheet" href="assets/vendor/Bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
		<link rel="stylesheet" href="assets/fonts//themify-icons.css">
		<link rel="stylesheet" href="assets/vendor/metisMenu/metisMenu.css">
		<link rel="stylesheet" href="assets/vendor/SlickNav/slicknav.min.css">
		<link rel="stylesheet" href="assets/css/typography.css">
		<link rel="stylesheet" href="assets/css/default-css.css">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/responsive.css">
		<link rel="stylesheet" href="assets/vendor/formvaldation/dist/css/formValidation.min.css">
		<link rel="stylesheet" href="assets/vendor/DataTables/datatables.min.css">
		<link rel="stylesheet" href="assets/vendor/JqueryWizard/dist/css/smart_wizard.min.css">
		<script src="assets/vendor/Modernizr/modernizr-2.8.3.min.js"></script>
		</head>
	<body>
		<!-- Preloader BEGIN -->
		<div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- Preloader END -->

    <div class="page-container">
    			<!-- Sidemenu BEGIN -->
		<div class="sidebar-menu">
			<div class="sidebar-header">
				<div class="logo">
					<a href="index.php"><img src="assets/images/icon/logo.png" alt="logo"></a>
				</div>
			</div>
			<div class="main-menu">
				<div class="menu-inner">
					<nav>
						<ul class="metismenu" id="menu">
							<li <?php if ($pagename=='Dashboard') {echo 'class="active"';}?> >
								<a href="index.php" aria-expanded="true"><i class="ti-dashboard"></i><span>Dashboard</span></a>
							</li>
							<li <?php if ($pagename=='Students') {echo 'class="active"';}?>>
								<a href="students.php">
									<i class="ti-dashboard"></i><span>Students</span>
								</a>
							</li>
							<li <?php if ($pagename=='Curriculum') {echo 'class="active"';}?>>
								<a href="curriculum.php">
									<i class="ti-dashboard"></i><span>Curriculum</span>
								</a>
							</li>
							<li <?php if ($pagename=='Subjects') {echo 'class="active"';}?>>
								<a href="subjects.php">
									<i class="ti-dashboard"></i><span>Subjects</span>
								</a>
							</li>
							<li <?php if ($pagename=='Courses') {echo 'class="active"';}?>>
								<a href="courses.php">
									<i class="ti-dashboard"></i><span>Courses</span>
								</a>
							</li>
							<li <?php if ($pagename=='Users') {echo 'class="active"';}?>>
								<a href="users.php">
									<i class="ti-dashboard"></i><span>Users</span>
								</a>
							</li>
<!-- 							<li>
								<a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Settings
								</span></a>
								<ul class="collapse">
									<li><a href="level1.php">Level 1</a></li>
									<li><a href="level2.php">Level2</a></li>
								</ul>
							</li>  -->
						</nav>
					</div>
				</div>
			</div>
		<!-- Sidemenu END -->

			<div class="main-content">

				<!-- Top navigation bar BEGIN -->
				<div class="header-area">
					<div class="row align-items-center">
						<!-- nav and search button -->
						<div class="col-md-6 col-sm-8 clearfix">
							<div class="nav-btn pull-left">
								<span></span>
								<span></span>
								<span></span>
							</div>
						</div>
						<div class="col-md-6 col-sm-4 clearfix">
						</div>
					</div>
				</div>
				<!-- Top navigation bar END -->