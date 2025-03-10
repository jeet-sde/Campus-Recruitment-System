<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>CRM | About CRM</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="What is CRM and How Admins Use It" name="description" />
    <meta content="Your Name" name="author" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResource/images/favicon.ico" />
    <link href="${pageContext.request.contextPath}/adminResource/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/adminResource/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/adminResource/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
</head>

<body data-sidebar="dark">
    <div id="layout-wrapper">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0 font-size-18">About CRM</h4>
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                        <li class="breadcrumb-item active">About CRM</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">What is CRM?</h5>
                                    <p class="card-text text-muted">
                                        CRM (Campus Recruitment Management) is a system designed to streamline and enhance the hiring process for organizations and educational institutions. It serves as a bridge between recruiters and students, enabling a seamless, efficient, and transparent recruitment process.
                                    </p>
                                    <h5 class="card-title mt-4">How Every Page Works</h5>
                                    <ul class="text-muted">
                                        <li><strong>Home/Dashboard:</strong> Displays total registered companies and students, job postings, and placement reports.</li>
                                        <li><strong>Student Entry:</strong> Allows student registration, profile creation, and resume uploads.</li>
                                        <li><strong>Company Entry:</strong> Enables companies to register, post jobs, and manage recruitment.</li>
                                        <li><strong>Insert Company:</strong> Shows companies hiring, job descriptions, and application options.</li>
                                        <li><strong>Job Management:</strong> Companies post jobs, students apply, and admins track applications.</li>
                                        < </ul>
                                    <h5 class="card-title mt-4">About Us</h5>
                                    <p class="card-text text-muted">
                                        Our goal is to digitize and optimize campus hiring, making it faster, more organized, and accessible to all stakeholders. With features such as job postings, automated shortlisting, interview scheduling, and result tracking, our system simplifies campus hiring for everyone.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script>
                        </div>
                        <div class="col-sm-6 text-sm-end d-none d-sm-block">
                            Designed & Developed by Your Team
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/adminResource/js/vendor.min.js"></script>
    <script src="${pageContext.request.contextPath}/adminResource/js/app.min.js"></script>
</body>
<script
		src="<%=request.getContextPath()%>/adminResource/js/custom/Company.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/metisMenu.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/simplebar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/waves.min.js"></script>

	<!-- Required datatable js -->
	<script
		src="<%=request.getContextPath()%>/adminResource/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
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

	<!-- Responsive examples -->
	<script
		src="<%=request.getContextPath()%>/adminResource/js/dataTables.responsive.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResource/js/responsive.bootstrap4.min.js"></script>

	<!-- Datatable init js -->
	<script
		src="<%=request.getContextPath()%>/adminResource/js/datatables.init.js"></script>

	<script src="<%=request.getContextPath()%>/adminResource/js/app.js"></script>

	<!-- validation -->
	<script
		src="<%=request.getContextPath()%>/adminResource/js/custom/Statevalidation.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>

</html>