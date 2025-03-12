<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8" />
<title>CRM | Company</title>
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



		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="main-content">

			<div class="page-content">
				<div class="container-fluid">

					<!-- start page title -->
					<div
						class="page-title-box d-sm-flex align-items-center justify-content-between">
						<!-- Grouping Users Heading and Breadcrumb together -->
						<div class="d-flex align-items-center">
							<!-- Users Heading -->
							<h4 class="mb-sm-0 font-size-18">Company</h4>

							<!-- Breadcrumb -->
							<div class="ms-3">
								<ol class="breadcrumb m-0">
									
								</ol>
							</div>
						</div>

						<!-- Right Side Button -->
						
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">

			<table id="datatable" class="table table-bordered dt-responsive nowrap w-100">
    <thead>
        <tr>
            <th>#</th>
            <th>Company Name</th>
            <th>Last Day to Register</th>
            <th>Package</th>
            <th>Location</th>
            <th>Status</th> <!-- Clickable Checkbox Column -->
            <th>Google Form</th>
        </tr>
    </thead>

    <tbody>
        <c:forEach items="${InsertcompanyList}" var="company" varStatus="j">
            <tr>
                <td>${j.count}</td>
                <td>${company.companyName}</td>
                <td>${company.lastDayToRegister}</td>
                <td>${company.packageOffered}</td>
                <td>${company.location}</td>
                <td>
                    <input type="checkbox" class="applied-checkbox" data-id="${company.id}" 
                        ${company.applied ? 'checked' : ''}>
                </td>
                <td>
                    <c:if test="${not empty company.googleFormLink}">
                        <a href="${company.googleFormLink}" target="_blank" class="btn btn-info">Open Form</a>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


			

											
								

							</div>
						</div>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->



			</div>
			<!-- container-fluid -->
		</div>
		<!-- End Page-content -->


		<jsp:include page="footer.jsp"></jsp:include>
		<!-- end main content-->

	</div>

	<!-- END layout-wrapper -->

	<!-- Right Sidebar -->

	<!-- /Right-bar -->


	

	

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