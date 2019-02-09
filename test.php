<?php 
$pagename='Users';
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
  <p>List all Users in a table with searching feature. Users can be viewed and Edited.</p>
</div>


                <div class="main-content-inner">
                    <!-- Column 12 BEGIN -->
                    <div class="row mt-5 mb-5">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body border-primary">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <h4 class="header-title mb-0">View Users</h4>
                                    </div>
                                    <div class="market-status-table mt-4">
                                        <table class="table table-striped table-bordered table-hover table-sm dataex-html5-window" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Name</th>
                                                    <th class="text-center">Position</th>
                                                    <th class="text-center">Status</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th class="text-center">Name</th>
                                                    <th class="text-center">Position</th>
                                                    <th class="text-center">Status</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column 12 END -->
                    <div class="row mt-5 mb-5">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <h4 class="header-title mb-0">Add User</h4>
                                    </div>
                                    <div class="market-status-table mt-4">
                                        <div class="container">
        
        <!-- SmartWizard html -->
        <div id="smartwizard">
            <ul>
                <li><a href="#step-1">Step 1<br /><small>This is step description</small></a></li>
                <li><a href="#step-2">Step 2<br /><small>This is step description</small></a></li>
                <li><a href="#step-3">Step 3<br /><small>This is step description</small></a></li>
                <li><a href="#step-4">Step 4<br /><small>This is step description</small></a></li>
            </ul>

            <div>
                <div id="step-1" class="">
                    <h3 class="border-bottom border-gray pb-2">Step 1 Content</h3>
                    1   
                </div>
                <div id="step-2" class="">
                    <h3 class="border-bottom border-gray pb-2">Step 2 Content</h3>
                   2
                <div id="step-3" class="">
                    <h3 class="border-bottom border-gray pb-2">Step 3 Content</h3>

                    3
                </div>
                <div id="step-4" class="">
                    <h3 class="border-bottom border-gray pb-2">Step 4 Content</h3>
    4
                </div>
            </div>
        </div>


    </div>
                                    </div>
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
                        // "targets": [4,5],
                    //     // "visible": false,
                        // "searchable": false,
                        // "className": "none"
                    }
                ]
            });

            $("#smartwizard").on("showStep", function(e, anchorObject, stepNumber, stepDirection, stepPosition) {
               //alert("You are on step "+stepNumber+" now");
               if(stepPosition === 'first'){
                   $("#prev-btn").addClass('disabled');
               }else if(stepPosition === 'final'){
                   $("#next-btn").addClass('disabled');
               }else{
                   $("#prev-btn").removeClass('disabled');
                   $("#next-btn").removeClass('disabled');
               }
            });

            // Toolbar extra buttons
            var btnFinish = $('<button></button>').text('Finish')
                                             .addClass('btn btn-info')
                                             .on('click', function(){ alert('Finish Clicked'); });
            var btnCancel = $('<button></button>').text('Cancel')
                                             .addClass('btn btn-danger')
                                             .on('click', function(){ $('#smartwizard').smartWizard("reset"); });


            // Smart Wizard
            $('#smartwizard').smartWizard({
                    selected: 0,
                    theme: 'default',
                    transitionEffect:'fade',
                    showStepURLhash: true
            });


        </script>
    </body>
</html>
