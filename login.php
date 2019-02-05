<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Login</title>
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
		<link rel="stylesheet" href="assets/vendor/formvalidation/dist/css/formValidation.min.css">
		<link rel="stylesheet" href="assets/vendor/DataTables/datatables.min.css">
		<script src="assets//vendor/Modernizr/modernizr-2.8.3.min.js"></script>
	</head>
	<body>
		<!-- Preloader BEGIN -->
		<div id="preloader">
        <div class="loader"></div>
    </div>
				<div class="login-area">
        <div class="container">
            <div class="login-box">
                <form method="POST" action="index.php" name="">
                    <div class="login-form-head">
                        <h4>Sign In</h4>
                    </div>
                    <div class="login-form-body">

                        <div class="form-gp">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" id="exampleInputEmail1">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" id="exampleInputPassword1">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="row mb-4 rmber-area">
                            <div class="col-6">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                    <label class="custom-control-label" for="customControlAutosizing">Remember Me</label>
                                </div>
                            </div>
                            <!-- <div class="col-6 text-right">
                                <a href="#">Forgot Password?</a>
                            </div> -->
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit">Submit <i class="ti-arrow-right"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

		<?php include('footer.php'); ?>
		<script>
			    	document.addEventListener('DOMContentLoaded', function(e) {
        FormValidation.formValidation(document.getElementById('addStudent'),
          {
            fields: {
              fname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 2,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z ]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              lname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              mname: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              birthdate: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              address: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              motherName: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
              fatherName: {
                validators: {
                  notEmpty: {
                    message: 'The name is required'},
                      stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The name must be more than 6 and less than 30 characters long'},
                      regexp: {
                         regexp: /^[a-zA-Z0-9_]+$/,
                         message: 'The name can only consist of alphabetical, number and underscore'
                      }
                  }
              },
                price: {
                  validators: {
                    notEmpty: {
                      message: 'The price is required'},
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
