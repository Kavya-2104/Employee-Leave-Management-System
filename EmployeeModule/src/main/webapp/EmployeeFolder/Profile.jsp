<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>LeaveConnect</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- Bootstrap CSS-->
	<link rel="stylesheet" href="assets/modules/bootstrap-5.1.3/css/bootstrap.css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- FontAwesome CSS-->
	<link rel="stylesheet" href="assets/modules/fontawesome6.1.1/css/all.css">
	<!-- Boxicons CSS-->
	<link rel="stylesheet" href="assets/modules/boxicons/css/boxicons.min.css">
	<!-- Apexcharts  CSS -->
	<link rel="stylesheet" href="assets/modules/apexcharts/apexcharts.css">
</head>
<body>
  
  <!--Topbar -->
 

	<!--Sidebar-->
	<!--Sidebar-->
	<div class="sidebar transition overlay-scrollbars animate__animated  animate__slideInLeft">
        <div class="sidebar-content"> 
        	<div id="sidebar">
			
			<!-- Logo -->
			<div class="logo">
					<h2 class="mb-0">LeaveConnect</h2>
			</div>

            <ul class="side-menu">
                <li>
					<a href="home" class="active">
						<i class='bx bxs-dashboard icon' ></i> Dashboard
					</a>
				</li>
				<li>
                    <a href="#">
						<i class='bx bxs-user icon' ></i> 
						Auth 
						<i class='bx bx-chevron-right icon-right' ></i>
					</a>
                    <ul class="side-dropdown">
                        <li><a href="auth-logout">Logout</a></li>
                        <li><a href="Profile">View Profile</a></li>
                        <li><a href="auth-reset-password">Reset Password</a></li>
                    </ul>
                </li>
				<!-- Divider-->
                <li class="divider" data-text="Atrana">Operations</li>
                <li>
                    <a href="LeaveReq">
						<i class='bx bxs-notepad icon' ></i> 
						Leave Request Form
					</a>                 
                </li>
				<li>
                    <a href="ViewAllReqs">
						<i class='bx bx-columns icon' ></i> 
						View All Submitted Forms
					</a>                 
                </li>
				<li>
                    <a href="LeaveBalance">
						<i class='bx bx-columns icon' ></i> 
						Leave Balances
					</a>                 
                </li>
				<li>
                    <a href="CheckStatus">
						<i class='bx bxs-bar-chart-alt-2 icon' ></i> 
						Check Form Status
					</a>                 
                </li>
        </div>
       </div> 
	 </div>
	</div><!-- End Sidebar-->



    <div class="content-start transition">
		<div class="container-fluid dashboard">
			<div class="content-header">
				<h4>Hi, Andree!</h4>
				<p>Change information about yourself on this page</p>
			</div>
		  
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-start align-items-sm-center  ">
                           <!--   <img src="assets/images/avatar/avatar-1.png" alt="user-avatar" class="d-block rounded" height="100" width="100px" 
                            id="uploadedAvatar" />-->
                            <img src='displayprofileimage?id=${eid}' class="d-block rounded" height="100" width="100px" 
                            id="uploadedAvatar" > 
                            <div class="button-wrapper">
                              <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                <span class="d-none d-sm-block">Upload new photo</span>
                                <i class="bx bx-upload d-block d-sm-none"></i>
                                <input type="file" id="upload" class="account-file-input" hidden accept="image/png, image/jpeg" />
                              </label>
                              <pre class="text-muted mb-0">  Allowed PNG only. Max size of 800K</pre>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card-body"> 
                        <form  method="POST" accept="my-profile.html">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="firstName" class="form-label">Name</label>
                                    <input class="form-control" type="text" id="firstName" name="firstName" value="Employee" autofocus />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="lastName" class="form-label">Employee ID</label>
                                    <input class="form-control" type="text" name="lastName" id="lastName" value="Doe" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="email" class="form-label">E-mail</label>
                                    <input class="form-control" type="text" id="email" name="email" value="Andree@example.com" placeholder="Andree@example.com" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="organization" class="form-label">Designation</label>
                                    <input type="text" class="form-control" id="organization" name="organization" value="TeamLead" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="organization" class="form-label">Contact</label>
                                    <input type="text" class="form-control" id="organization" name="organization" value="AtranaTheme" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="organization" class="form-label">Organization</label>
                                    <input type="text" class="form-control" id="organization" name="organization" value="AtranaTheme" />
                                </div>
                              
                                <div class="mt-2">
                                    <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                    <button type="reset" class="btn btn-outline-secondary">Cancel</button>
                                </div>
                        </form>
                        </div>
                    </div>
                </div>

                    <div class="card">
                        <h5 class="card-header">Delete Account</h5>
                        <div class="card-body">
                          <div class="mb-3 col-12 mb-0">
                            <div class="alert alert-warning">
                              <h6 class="alert-heading fw-bold mb-1">Are you sure you want to delete your account?</h6>
                              <p class="mb-0">Once you delete your account, there is no going back. Please be certain.</p>
                            </div>
                          </div>
                          <form  method="POST" accept="my-profile.html"> 
                            <div class="form-check mb-3">
                              <input class="form-check-input" type="checkbox" name="accountActivation" id="accountActivation" />
                              <label class="form-check-label" for="accountActivation">I confirm my account deactivation</label>
                            </div>
                            <button type="submit" class="btn btn-danger deactivate-account">Deactivate Account</button>
                          </form>
                        </div>
                    </div>
                </div>
            </div>


		</div> <!-- End Container -->
	</div><!-- End Content -->


	

	<!-- Footer -->				
	<footer>
		<div class="footer">
			<div class="float-start">
				<p>2023 &copy; All rights Reserved by SDP-Team</p>
			</div>
		</div>
	</footer>


	<!-- Preloader -->
	<div class="loader">
		<div class="spinner-border text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	
	<!-- Loader -->
	<div class="loader-overlay"></div>

	<!-- General JS Scripts -->
	<script src="assets/js/atrana.js"></script>

	<!-- JS Libraies -->
	<script src="assets/modules/jquery/jquery.min.js"></script>
	<script src="assets/modules/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
	<script src="assets/modules/popper/popper.min.js"></script>

	<!-- Chart Js -->
	<script src="assets/modules/apexcharts/apexcharts.js"></script>
	<script src="assets/js/ui-apexcharts.js"></script>

    <!-- Template JS File -->
	<script src="assets/js/script.js"></script>
	<script src="assets/js/custom.js"></script>
 </body>
</html>
