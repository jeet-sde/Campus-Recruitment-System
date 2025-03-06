<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8" />
<title>CRM | Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="Premium Multipurpose Admin & Dashboard Template"
	name="description" />
<meta content="Themesbrand" name="author" />
<!-- App favicon -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResource/images/favicon.ico">

<!-- DataTables -->
<link
	href="<%=request.getContextPath()%>/adminResource/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/adminResource/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />

<!-- Responsive datatable examples -->
<link
	href="<%=request.getContextPath()%>/adminResource/css/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />

<!-- Bootstrap Css -->
<link
	href="<%=request.getContextPath()%>/adminResource/css/bootstrap.min.css"
	id="bootstrap-style" rel="stylesheet" type="text/css" />



<!-- Bootstrap Css -->
<link href="<%=request.getContextPath()%>/adminResource/css/style.css"
	id="bootstrap-style" rel="stylesheet" type="text/css" />

<!-- Icons Css -->
<link
	href="<%=request.getContextPath()%>/adminResource/css/icons.min.css"
	rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="<%=request.getContextPath()%>/adminResource/css/app.min.css"
	id="app-style" rel="stylesheet" type="text/css" />
<!-- App js -->
<script src="<%=request.getContextPath()%>/adminResource/js/plugin.js"></script>

</head>

<body data-sidebar="dark">

	<!-- <body data-layout="horizontal" data-topbar="dark"> -->

	<!-- Begin page -->
	<div id="layout-wrapper">


		<jsp:include page="header.jsp"></jsp:include>

		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- Left Sidebar End -->




<body>
  <div class="content-page">
    <div class="content">
        <div class="container-fluid">
        
          <div class="row justify-content-center mt-5" style="margin-top: 90px;">
          
                <div class="col-md-8 col-lg-5">
                    <div class="card shadow-lg p-4">
                    
                        <h2 class="text-center">Add New Company</h2>

                        <c:if test="${not empty error}">
                            <div class="alert alert-danger">${error}</div>
                        </c:if>

                        <form id="companyForm" action="<%=request.getContextPath()%>/admin/saveCompanydetails" method="post">
                            
                            <!-- Company Name -->
                            <div class="form-group">
                                <label for="companyName">Company Name</label>
                                <input type="text" id="companyName" name="companyName" class="form-control" required />
                            </div>

                            <!-- Last Day to Register -->
                            <div class="form-group">
                                <label for="lastDayToRegister">Last Day to Register</label>
                                <input type="date" id="lastDayToRegister" name="lastDayToRegister" class="form-control" required />
                            </div>

                            <!-- Position -->
                            <div class="form-group">
                                <label for="position">Position</label>
                                <input type="text" id="position" name="position" class="form-control" required />
                            </div>

                            <!-- Qualification -->
                            <div class="form-group">
                                <label for="qualification">Qualification</label>
                                <input type="text" id="qualification" name="qualification" class="form-control" required />
                            </div>

                            <!-- Package -->
                            <div class="form-group">
                                <label for="packageOffered">Package</label>
                                <input type="text" id="packageOffered" name="packageOffered" class="form-control" required />
                            </div>

                            <!-- Location -->
                            <div class="form-group">
                                <label for="location">Location</label>
                                <input type="text" id="location" name="location" class="form-control" required />
                            </div>

                            <button type="submit" class="btn btn-primary btn-block">Save Company</button>
                        </form>
                    </div>
                </div>
            </div>
    
    
        </div> <!-- container-fluid -->
    </div> <!-- content -->
</div> <!-- content-page -->
    
                      
            
    <!-- Form Validation -->
    <script>
        $(document).ready(function () {
            $("#companyForm").validate({
                rules: {
                    companyName: "required",
                    lastDayToRegister: "required",
                    position: "required",
                    qualification: "required",
                    packageOffered: "required",
                    location: "required"
                },
                messages: {
                    companyName: "Please enter the company name",
                    lastDayToRegister: "Please select the last registration date",
                    position: "Please enter the position",
                    qualification: "Please enter the qualification",
                    packageOffered: "Please enter the package",
                    location: "Please enter the location"
                }
            });
        });
    </script>
    
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/custom/toaster.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResource/js/custom/users.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/metisMenu.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/simplebar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/waves.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/dataTables.buttons.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/buttons.bootstrap4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jszip.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/pdfmake.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/vfs_fonts.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/buttons.html5.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/buttons.print.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/buttons.colVis.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/dataTables.responsive.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/responsive.bootstrap4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/datatables.init.js"></script>
	<script src="<%=request.getContextPath()%>/adminResource/js/app.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.validate.min.js"></script>
		
</body>

</html>
