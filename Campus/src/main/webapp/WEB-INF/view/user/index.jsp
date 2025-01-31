<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>User Dashboard | Skote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="User Dashboard" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResource/images/favicon.ico" />

    <!-- Bootstrap Css -->
    <link href="<%=request.getContextPath()%>/adminResource/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<%=request.getContextPath()%>/adminResource/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<%=request.getContextPath()%>/adminResource/css/app.min.css" rel="stylesheet" type="text/css" />

    <style>
        .custom-card {
            max-width: 350px; /* Set the maximum width */
            margin: 0 auto; /* Center the card */
        }

        .avatar-md {
            width: 80px; /* Adjust avatar size */
            height: 80px;
        }

        .stats-card {
            border: 1px solid #e0e0e0;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            background: #f8f9fa;
        }

        .stats-card h5 {
            margin-bottom: 15px;
            color: #007bff;
        }

        @media (max-width: 768px) {
            .custom-card {
                max-width: 90%; /* Make the card wider on smaller screens */
            }
        }
    </style>
</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">

        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>

        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0 font-size-18">Welcome Back!</h4>
                            </div>
                        </div>
                    </div>

                    <!-- Greeting Message -->
                    <div class="row">
                        <div class="col-12 text-center mb-4">
                            <h3>Hello, User!</h3>
                            <p class="text-muted">Here's what's happening with your account today.</p>
                        </div>
                    </div>

                    <div class="row justify-content-center"> <!-- Center the row -->
                        <div class="col-lg-4 col-md-6"> <!-- Adjust column sizes for responsiveness -->
                            <div class="card custom-card overflow-hidden">
                                <div class="bg-primary-subtle">
                                    <div class="row">
                                        <div class="col-7">
                                            <div class="text-primary p-3">
                                                <h5 class="text-primary">Welcome to Your Dashboard!</h5>
                                                <p>Manage your files and explore your content.</p>
                                            </div>
                                        </div>
                                        <div class="col-5 align-self-end text-center">
                                            <img src="<%=request.getContextPath()%>/adminResource/images/profile-img.png" alt="" class="img-fluid" />
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="text-center">
                                        <div class="avatar-md profile-user-wid mb-4">
                                              </div>
                                        <h5 class="font-size-15 text-truncate">User</h5>
                                        <p class="text-muted mb-0 text-truncate">User Role</p>
                                        <div class="mt-4">
                                              </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-8 col-md-6"> <!-- Adjust column sizes for responsiveness -->
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">Recent Activities</h4>
                                    <p class="text-muted mb-0">You have no recent activities to display.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Stats Section -->
                    <div class="row justify-content-center mt-4">
                        <div class="col-md-4">
                            <div class="stats-card">
                                <h5>Total Files</h5>
                                <h3>2</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="stats-card">
                                <h5>Storage Used</h5>
                                <h3>1GB / 50GB</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="stats-card">
                                <h5>Shared Files</h5>
                                <h3>0</h3>
                            </div>
                        </div>
                    </div>

       
                </div> <!-- container-fluid -->
            </div> <!-- page-content -->
        </div> <!-- main-content -->
    </div> <!-- layout-wrapper -->

    <jsp:include page="footer.jsp"></jsp:include>

    <!-- JAVASCRIPT -->
    <script src="<%=request.getContextPath()%>/adminResource/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/metisMenu.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/simplebar.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/waves.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/app.js"></script>
</body>

</html>
