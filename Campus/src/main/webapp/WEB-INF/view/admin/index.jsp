<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>CRM | Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="SyncRepo Personal Storage Admin Dashboard" name="description" />
    <meta content="Your Name" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResource/images/favicon.ico" />
    <!-- Bootstrap Css -->
    <link href="${pageContext.request.contextPath}/adminResource/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="${pageContext.request.contextPath}/adminResource/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="${pageContext.request.contextPath}/adminResource/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/adminResource/css/custom.css" rel="stylesheet" type="text/css" />
    <!-- App js -->
    <script src="${pageContext.request.contextPath}/adminResource/js/plugin.js"></script>
</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0 font-size-18">Admin Dashboard</h4>
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                                        <li class="breadcrumb-item active">Dashboard</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <!-- Total Students Card -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card mini-stats-wid">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex-grow-1">
                                            <p class="text-muted fw-medium">Total Students</p>
                                            <h4 class="mb-0" id="totalStudents">0</h4>
                                        </div>
                                        <div class="flex-shrink-0 align-self-center">
                                            <div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
                                                <span class="avatar-title"> <i class="bx bx-user font-size-24"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Total Companies Card -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card mini-stats-wid">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex-grow-1">
                                            <p class="text-muted fw-medium">Total Companies</p>
                                            <h4 class="mb-0" id="totalCompanies">0</h4>
                                        </div>
                                        <div class="flex-shrink-0 align-self-center">
                                            <div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
                                                <span class="avatar-title"> <i class="bx bx-building font-size-24"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end row -->
                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script> © Campus Recruitment System.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Design & Develop by jeet, Abhi & Darshi
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <!-- end main content-->
    </div>
    <!-- END layout-wrapper -->	

    <!-- Bundle JS -->
    <script src="${pageContext.request.contextPath}/adminResource/js/vendor.min.js"></script>
    <script src="${pageContext.request.contextPath}/adminResource/js/app.min.js"></script>

    <!-- AJAX Script -->
    <script>
        // Fetch data from the server
        function fetchDashboardData() {
            fetch('/admin/dashboard/data')
                .then(response => response.json())
                .then(data => {
                    document.getElementById('totalStudents').textContent = data.totalStudents;
                    document.getElementById('totalCompanies').textContent = data.totalCompanies;
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        }

        // Call fetchDashboardData function when the page loads
        window.onload = fetchDashboardData;
    </script>
</body>
  <!-- JAVASCRIPT -->
    <script src="<%=request.getContextPath()%>/adminResource/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/metisMenu.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/simplebar.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/waves.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/app.js"></script>
</body>
</html>
