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

    
</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">

        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <style>
        body {
            background-color: 
            color: white;
        }
        .sidebar {
            background-color: #1e1e1e;
            height: 100vh;
            padding: 20px;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .sidebar a.active, .sidebar a:hover {
            background: linear-gradient(to right, #ff00ff, #8000ff);
        }
        .card-custom {
            background: 
            padding: 15px;
            border-radius: 10px;
        }
        .badge-custom {
            background: linear-gradient(to right, #ff00ff, #8000ff);
            padding: 10px;
            border-radius: 5px;
        }
    </style>
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

                   <div class="col-md-10 p-4">
                <h2 class="fw-bold">Welcome to <span class="text-warning">Placement Portal</span></h2>
                <p>Here you get all the details about upcoming companies visiting our college.</p>
                <div class="row">
    <!-- First Card -->
    <div class="col-md-6 col-lg-6">
        <div class="card shadow-sm border-0">
            <div class="card-body text-center">
                <h4 class="text-uppercase">Valorx</h4>
                <p><i class="fa fa-briefcase"></i> Product Based</p>
                <p><i class="fa fa-money-bill"></i> 7 lpa</p>
                <p><i class="fa fa-calendar"></i> Date: 02 Feb 2022</p>
                <button class="btn badge-custom">Upcoming</button>
            </div>
        </div>
    </div>

    <!-- Second Card -->
    <div class="col-md-6 col-lg-6">
        <div class="card shadow-sm border-0">
            <div class="card-body text-center">
                <h4 class="text-uppercase">xyz</h4>
                <p><i class="fa fa-briefcase"></i> PRODUCT Based</p>
                <p><i class="fa fa-money-bill"></i> CTC: 7 lpa</p>
                <p><i class="fa fa-calendar"></i> Date: 12 dec 2026</p>
                <button class="btn badge-custom">Upcoming</button>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-6">
        <div class="card shadow-sm border-0">
            <div class="card-body text-center">
                <h4 class="text-uppercase">tcs</h4>
                <p><i class="fa fa-briefcase"></i> Service Based</p>
                <p><i class="fa fa-money-bill"></i> CTC: 4-7 lpa</p>
                <p><i class="fa fa-calendar"></i> Date: 11 dec 2026</p>
                <button class="btn badge-custom">Upcoming</button>
            </div>
        </div>
    </div>
         
    
           
          

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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Ensure jQuery is included -->

<script>
$(document).ready(function () {
    $(".applied-checkbox").on("change", function () {
        let companyId = $(this).data("id");  // Get company ID from checkbox
        let status = $(this).is(":checked"); // Check if checkbox is checked

        console.log("Company ID:", companyId, "New Status:", status); // Debugging

        $.ajax({
            url: "<%=request.getContextPath()%>/company/updateCompanyStatus", // Ensure this matches your controller mapping
            type: "POST",
            data: {
                companyId: companyId,
                status: status
            },
            success: function (response) {
                console.log("Success Response:", response);
                alert("Updated Successfully");

                // Reload dashboard or specific section dynamically
                $("#dashboardSection").load(location.href + " #dashboardSection"); // Ensure dashboard has an ID
            },
            error: function (xhr) {
                console.error("Error Response:", xhr.responseText);
                alert("Error updating company status");
            }
        });
    });
});
</script>
    
</body>

</html>
