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



<div class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="container p-4 shadow bg-white rounded" style="max-width: 600px;">
        <h2 class="text-center">Add New Company</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
<form action="<%=request.getContextPath()%>/admin/UpcomingCompanydetails" method="post">
      <div class="form-group">
                <label>Company Name</label>
                <input type="text" name="name" class="form-control" required />
            </div>

            <div class="form-group">
                <label>Type</label>
                <input type="text" name="type" class="form-control" required />
            </div>

            <div class="form-group">
                <label>CTC</label>
                <input type="text" name="ctc" class="form-control" required />
            </div>

            <div class="form-group">
                <label>Date</label>
                <input type="date" name="date" class="form-control" required />
            </div>

            <div class="form-group">
                <label>Position</label>
                <input type="text" name="position" class="form-control" required />
            </div>

            <button type="submit" class="btn btn-primary btn-block">Save Company</button>
        </form>
    </div>
</div>

    <script>
    /* Center the form */
.container {
    max-width: 600px; /* Set form width */
    margin: 100px auto; /* Center the form and add top margin */
    padding: 20px;
    background: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

/* Prevent header & menu from overlapping */
body {
    padding-top: 10px; /* Adjust this based on header height */
}

/* Center the form within the main content area */
#main-content {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 80vh;
}
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
