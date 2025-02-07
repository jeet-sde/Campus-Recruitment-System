<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>CRM | About CRM</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="What is CRM and How Admins Use It" name="description" />
    <meta content="Your Name" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResource/images/favicon.ico" />
    <!-- Bootstrap Css -->
    <link href="${pageContext.request.contextPath}/adminResource/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="${pageContext.request.contextPath}/adminResource/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="${pageContext.request.contextPath}/adminResource/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
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
                                <h4 class="mb-sm-0 font-size-18">About CRM</h4>
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                                        <li class="breadcrumb-item active">About CRM</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <!-- About CRM Content -->
                      <!--    <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">What is CRM?</h5>
                                    <p class="card-text text-muted">
                                        CRM, or Customer Relationship Management, is a technology used to manage interactions with customers and potential clients. It helps organizations streamline processes, improve customer service, and increase profitability. A CRM system provides a centralized platform for tracking customer information, sales, and communication history.
                                    </p>

                                    <h5 class="card-title mt-4">How Should Admins Use CRM?</h5>
                                    <p class="card-text text-muted">
                                        As an admin, your role is critical in ensuring the CRM system is effectively utilized. Here are some key ways you can use the CRM:
                                    </p>
                                    <ul class="text-muted">
                                        <li><strong>Manage Users:</strong> Add, update, or remove users and assign appropriate roles and permissions to ensure data security and controlled access.</li>
                                        <li><strong>Customize Settings:</strong> Configure the CRM to match your organization's specific needs, such as custom fields, workflows, and reporting dashboards.</li>
                                        <li><strong>Monitor Performance:</strong> Generate reports and analyze metrics to assess team performance, track sales pipelines, and identify areas for improvement.</li>
                                        <li><strong>Data Management:</strong> Ensure that all customer and business data is accurate, up-to-date, and securely stored in the CRM system.</li>
                                        <li><strong>Train Employees:</strong> Provide training to users on how to effectively use the CRM to boost productivity and enhance customer relationships.</li>
                                    </ul>

                                    <h5 class="card-title mt-4">Benefits of Using CRM</h5>
                                    <p class="card-text text-muted">
                                        By leveraging a CRM system, businesses can:
                                    </p>
                                    <ul class="text-muted">
                                        <li>Improve customer satisfaction and retention by providing personalized experiences.</li>
                                        <li>Streamline communication and collaboration among team members.</li>
                                        <li>Gain insights into customer behavior through detailed analytics and reporting.</li>
                                        <li>Increase sales efficiency and optimize marketing efforts.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!-- end row -->
                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script> © SyncRepo.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Designed & Developed by Your Team
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
    
      <script src="<%=request.getContextPath()%>/adminResource/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/metisMenu.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/simplebar.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/waves.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResource/js/app.js"></script>
</body>
</body>

</html>
