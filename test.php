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
<div class="main-content-inner">
  <!-- Column 12 BEGIN -->
  <div class="row mt-5 mb-5">
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
            <form id="demoForm" method="POST">
    <!-- Split the form into multiple steps -->
    <div class="js-step">
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">f1</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="f1" />
        </div>
      </div>
    </div>

    <div class="js-step">
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">f2</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="f2" />
        </div>
      </div>
    </div>

    <!-- The button to go to the previous step -->
    <button id="prevButton">Prev</button>

    <!-- The button to go to the next step -->
    <button id="nextButton">Next</button>
</form>
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
  
document.addEventListener('DOMContentLoaded', function(e) {FormValidation
        .formValidation(
            document.getElementById('demoForm'),
            {
                fields: {
                    f1: {
                        validators: {
                            notEmpty: {
                                message: 'The first name is required'
                            }
                        }
                    },
                    f2: {
                        validators: {
                            notEmpty: {
                                message: 'The first name is required'
                            }
                        }
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    Bootstrap: new FormValidation.plugins.Bootstrap(),
                    wizard: new FormValidation.plugins.Wizard({
                        stepSelector: '.js-step',
                        prevButton: '#prevButton',
                        nextButton: '#nextButton',
                    }),
                    submitButton: new FormValidation.plugins.SubmitButton(),
                    icon: new FormValidation.plugins.Icon({
                        valid: 'fa fa-check',
                        invalid: 'fa fa-times',
                        validating: 'fa fa-refresh',
                    }),
                },
            }
        )
        // Update the label of Next button
        .on('plugins.wizard.step.active', function(e) {
            document.getElementById('nextButton').innerHTML = (e.step === e.numSteps - 1) ? 'Purchase' : 'Next';
        })
        .on('plugins.wizard.valid', function(e) {
            document.getElementById('nextButton').innerHTML = 'Done';
        });
});


  </script>
</body>
</html>