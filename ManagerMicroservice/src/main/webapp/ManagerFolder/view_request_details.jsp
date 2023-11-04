<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>LeaveConnect</title>

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
	<div class="sidebar transition overlay-scrollbars animate__animated  animate__slideInLeft">
        <div class="sidebar-content"> 
        	<div id="sidebar">
			
			<!-- Logo -->
			<div class="logo">
					<h2 class="mb-0">LeaveConnect</h2>
			</div>

            <ul class="side-menu">
                <li>
					<a href="index.html" class="active">
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
						<li><a href="auth-logout.html">Logout</a></li>
                        <li><a href="view_profile.html">View Profile</a></li>
                        <li><a href="auth-reset-password.html">Reset Password</a></li>
                    </ul>
                </li>
				<!-- Divider-->
				<li class="divider" data-text="Atrana">Operations</li>
                <li>
                    <a href="ViewLeaveRequests">
						<i class='bx bxs-notepad icon' ></i> 
						View Requests Generated Today
					</a>                 
                </li>
				
				<li>
                    <a href="Request_History">
						<i class='bx bxs-bar-chart-alt-2 icon' ></i> 
						View All Requests
					</a>                 
                </li>
                
                <li>
                    <a href="View_Requests">
						<i class='bx bx-columns icon' ></i> 
						Request History
					</a>                 
                </li>
        </div>
       </div> 
	 </div>
	</div><!-- End Sidebar-->


	<div class="content-start transition">
		<div class="container-fluid dashboard">
			<div class="content-header">
				<h1>Employee Leave Details</h1>
				<p>Submit your leave request using the form below.</p>
			</div>
	        <div class="row">

				
                <div class="container mt-5">
                    <div class="card text-center">
                      <div class="card-header">
                        <div class="row">
                          <div class="col">
                            <img src="data:image/png;base64,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" class="rounded-circle" alt="Employee Profile" width="80">
                          </div>
                          <div class="col">
                            <h4>John Doe</h4>
                            <p>Software Engineer</p>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <h5 class="card-title">Type of Leave:${lr.type}</h5>
                        <p class="card-text">Reason: Feeling unwell, need time to recover.</p>
                        <p class="card-text">From: August 25, 2023 to August 29, 2023</p>
                        <p class="card-text">Duration: 5 days</p>
                      </div>
                      <div class="card-footer">
                        <div class="row">
                          <div class="col">
                            <p class="mb-0">Remaining Leaves: 10 days</p>
                          </div>
                          <div class="col">
                            <button class="btn btn-success float-left">Approve</button>
                            <span class="vertical-divider"></span>
                            <button class="btn btn-danger float-right">Reject</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                
                  <style>
                    .vertical-divider {
                      display: inline-block;
                      border-left: 1px solid #ccc;
                      height: 24px;
                      margin: 0 8px;
                    }
                  </style>
				
		</div>
		</div>
	</div>

	

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
