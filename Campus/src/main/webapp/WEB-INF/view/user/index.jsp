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
                               
                            </div>
                        </div>
                    </div>

                   <div class="col-md-10 p-4">
                <h2 class="fw-bold">Welcome to <span class="text-warning">Placement Portal</span></h2>
                <p>Here you get all the details about upcoming companies visiting our college.</p>
                <div class="row">
                
                
                <!-- Current Companies -->
<div class="col-xl-4 col-md-6">
    <div class="card mini-stats-wid shadow-lg border-0 position-relative overflow-hidden" 
         style="background: linear-gradient(135deg, #1e3c72, #2a5298); color: white; border-radius: 15px;">
        <div class="card-body">
            <div class="d-flex align-items-center">
                <div class="flex-grow-1">  
                    <p class="fw-bold text-uppercase mb-1">Current Companies</p>
                    <h4 class="mb-0 text-white" id="totalCompanies">0</h4>
                </div>
                <div class="icon-container d-flex align-items-center justify-content-center">
                    <i class="bx bx-buildings font-size-32 text-white"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Upcoming Companies -->
<div class="col-12 mt-4">
    <h4 class="text-center mb-3 text-warning">Upcoming Companies</h4>
    <div class="row">
        <div class="col-md-6 col-lg-6">
            <div class="card shadow-lg border-0 position-relative overflow-hidden"
                 style="background: linear-gradient(135deg, #1e3c72, #2a5298); color: white; border-radius: 15px;">
                <div class="card-body text-center">
                    <h4 class="text-uppercase text-white">valorx</h4>
                    <p><i class="fa fa-briefcase"></i> IT Services</p>
                    <p><i class="fa fa-money-bill"></i> 7 LPA</p>
                    <p><i class="fa fa-calendar"></i> Date: 25th April 2025</p>
                    <p><i class="fa fa-user"></i> Position: Software Engineer</p>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-6">
            <div class="card shadow-lg border-0 position-relative overflow-hidden"
                 style="background: linear-gradient(135deg, #1e3c72, #2a5298); color: white; border-radius: 15px;">
                <div class="card-body text-center">
                    <h4 class="text-uppercase text-white">neo</h4>
                    <p><i class="fa fa-briefcase"></i> E-Commerce</p>
                    <p><i class="fa fa-money-bill"></i> 5 LPA</p>
                    <p><i class="fa fa-calendar"></i> Date: 30th April 2025</p>
                    <p><i class="fa fa-user"></i> Position: Cloud Engineer</p>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-6 mt-4">
            <div class="card shadow-lg border-0 position-relative overflow-hidden"
                 style="background: linear-gradient(135deg, #1e3c72, #2a5298); color: white; border-radius: 15px;">
                <div class="card-body text-center">
                    <h4 class="text-uppercase text-white">zulu</h4>
                    <p><i class="fa fa-briefcase"></i> Software Development</p>
                    <p><i class="fa fa-money-bill"></i> 8 LPA</p>
                    <p><i class="fa fa-calendar"></i> Date: 10th May 2025</p>
                    <p><i class="fa fa-user"></i> Position: Full Stack Developer</p>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Previous Company Visits -->
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card shadow-lg border-0 position-relative overflow-hidden"
             style="background: linear-gradient(135deg, #1e3c72, #2a5298); color: white; border-radius: 15px;">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="card-title text-white">Previous Company Visits</h5>
                    <input type="text" id="searchInput" class="form-control w-25" placeholder="Search company...">
                </div>
                <div class="table-responsive">
                    <table id="companyVisitsTable" class="table table-hover align-middle text-white">
                        <thead class="table-dark">
                            <tr>
                                <th>#</th>
                                <th>Company Name</th>
                                <th>Visit Year</th>
                                <th>Job Role</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Valorx</td>
                                <td>2025</td>
                                <td>Multiple Roles</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>IT Solution</td>
                                <td>2025</td>
                                <td>Software Engineer</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Medkart</td>
                                <td>2025</td>
                                <td>Associate Software Engineer</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Pagination Controls -->
                <div class="d-flex justify-content-end mt-3">
                    <button class="btn btn-outline-light btn-sm" id="prevPage">Previous</button>
                    <span class="mx-2 text-white" id="pageIndicator">1</span>
                    <button class="btn btn-outline-light btn-sm" id="nextPage">Next</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- CSS -->
<style>
    .icon-container {
        width: 55px;
        height: 55px;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        transition: transform 0.3s ease-in-out;
    }
    
    .card:hover .icon-container {
        transform: scale(1.1);
    }
    
    .card {
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }
    
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
    }
    
    /* Dark text inside table */
    .table-hover tbody tr:hover {
        background-color: rgba(255, 255, 255, 0.2) !important;
    }
    
    .table-dark th {
        background-color: rgba(0, 0, 0, 0.3) !important;
        color: white !important;
    }
    
    .table-responsive {
        background: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
        padding: 10px;
    }
</style>
                




<!-- CSS -->
<style>
    .icon-container {
        width: 55px;
        height: 55px;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        transition: transform 0.3s ease-in-out;
    }
    
    .card:hover .icon-container {
        transform: scale(1.1);
    }
    
    .card {
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }
    
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
    }
</style>
   
<!-- End Previous Company Visits -->

<!-- JavaScript -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        let table = document.getElementById("companyVisitsTable").getElementsByTagName("tbody")[0];
        let rows = Array.from(table.getElementsByTagName("tr"));
        let searchInput = document.getElementById("searchInput");
        let rowsPerPage = 2;
        let currentPage = 1;

        function filterTable() {
            let query = searchInput.value.toLowerCase();
            rows.forEach(row => {
                let text = row.innerText.toLowerCase();
                row.style.display = text.includes(query) ? "" : "none";
            });
        }

        function paginateTable() {
            let start = (currentPage - 1) * rowsPerPage;
            let end = start + rowsPerPage;
            rows.forEach((row, index) => {
                row.style.display = index >= start && index < end ? "" : "none";
            });
            document.getElementById("pageIndicator").innerText = currentPage;
        }

        searchInput.addEventListener("input", filterTable);

        document.getElementById("prevPage").addEventListener("click", function () {
            if (currentPage > 1) {
                currentPage--;
                paginateTable();
            }
        });

        document.getElementById("nextPage").addEventListener("click", function () {
            if (currentPage * rowsPerPage < rows.length) {
                currentPage++;
                paginateTable();
            }
        });

        paginateTable();
    });
</script>

<!-- End Previous Company Visits -->
                   
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
        function fetchDashboardData() {
            fetch('/user/index/data')
                .then(response => response.json())
                .then(data => {
                    document.getElementById('totalCompanies').textContent = data.totalCompanies;
                    updateChart(data.totalStudents, data.totalCompanies);
                })
                .catch(error => console.error('Error fetching data:', error));
        }

        function updateChart(students, companies) {
            const ctx = document.getElementById('statsChart').getContext('2d');
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Companies'],
                    datasets: [{
                        data: [ companies],
                        backgroundColor: ['#007bff', '#28a745'],
                        hoverBackgroundColor: ['#0056b3', '#1d8231'],
                    }]
                }
            });
        }

        window.onload = fetchDashboardData;
    </script>
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
