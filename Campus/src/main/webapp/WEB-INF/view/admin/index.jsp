<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Admin Dashboard | SyncRepo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="SyncRepo Personal Storage Admin Dashboard" name="description" />
    <meta content="Your Name" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResource/images/favicon.ico" />

    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/adminResource/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Icons CSS -->
    <link href="${pageContext.request.contextPath}/adminResource/css/icons.min.css" rel="stylesheet" />

    <!-- App CSS -->
    <link href="${pageContext.request.contextPath}/adminResource/css/app.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/adminResource/css/custom.css" rel="stylesheet" />

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        .table-hover tbody tr:hover {
            background-color: #f8f9fa;
        }

        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }

        .badge {
            padding: 5px 10px;
            font-size: 12px;
        }

        .card-title {
            font-weight: bold;
            color: #333;
        }

        .status-completed {
            background-color: #28a745;
            color: white;
        }

        .status-upcoming {
            background-color: #ffc107;
            color: black;
        }

        .status-postponed {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>

<body data-sidebar="dark">

    <div id="layout-wrapper">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>

        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">

                    <!-- Page Title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0 font-size-18">Admin Dashboard</h4>
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                                        <li class="breadcrumb-item active">Dashboard</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Dashboard Cards -->
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card mini-stats-wid shadow-sm">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex-grow-1">
                                            <p class="text-muted fw-medium">Total Students</p>
                                            <h4 class="mb-0 text-primary" id="totalStudents">0</h4>
                                        </div>
                                        <div class="avatar-sm rounded-circle bg-primary">
                                            <span class="avatar-title">
                                                <i class="bx bx-user font-size-24"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6">
                            <div class="card mini-stats-wid shadow-sm">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex-grow-1">
                                            <p class="text-muted fw-medium">Total Companies</p>
                                            <h4 class="mb-0 text-success" id="totalCompanies">0</h4>
                                        </div>
                                        <div class="avatar-sm rounded-circle bg-success">
                                            <span class="avatar-title">
                                                <i class="bx bx-building font-size-24"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                       
<!-- Include Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- Chart Container -->
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title mb-3">Company Visit Trends (2019-2025)</h5>
                <canvas id="companyTrendChart"></canvas>
            </div>
        </div>
    </div>
</div>

<script>
    // Yearly Data
    const years = [2019, 2020, 2021, 2022, 2023, 2024, 2025];
    const totalCompanies = [10, 12, 15, 18, 20, 22, 25]; // Total companies visited each year
    const avgPackage = [7, 6.8, 6.5, 6.7, 7.2, 7.5, 8]; // Average LPA each year
    const itSectorCompanies = [6, 7, 10, 12, 14, 16, 18]; // IT Companies count
    const otherSectorCompanies = totalCompanies.map((val, index) => val - itSectorCompanies[index]); // Other Sectors

    // Create Chart
    const ctx = document.getElementById("companyTrendChart").getContext("2d");
    new Chart(ctx, {
        type: "line",
        data: {
            labels: years,
            datasets: [
                {
                    label: "Total Companies Visited",
                    data: totalCompanies,
                    borderColor: "#FF5733",
                    backgroundColor: "rgba(255, 87, 51, 0.2)",
                    borderWidth: 2,
                    fill: true
                },
                {
                    label: "Average Package (LPA)",
                    data: avgPackage,
                    borderColor: "#4CAF50",
                    backgroundColor: "rgba(76, 175, 80, 0.2)",
                    borderWidth: 2,
                    fill: true
                },
                {
                    label: "IT Sector Companies",
                    data: itSectorCompanies,
                    borderColor: "#2196F3",
                    backgroundColor: "rgba(33, 150, 243, 0.2)",
                    borderWidth: 2,
                    fill: false
                },
                {
                    label: "Other Sector Companies",
                    data: otherSectorCompanies,
                    borderColor: "#FFC107",
                    backgroundColor: "rgba(255, 193, 7, 0.2)",
                    borderWidth: 2,
                    fill: false
                }
            ]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { position: "top" }
            },
            scales: {
                y: { title: { display: true, text: "Count / LPA" }, beginAtZero: true },
                x: { title: { display: true, text: "Year" } }
            }
        }
    });
</script>

                
                </div>
            </div>

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script> © Campus Recruitment System.
                        </div>
                        <div class="col-sm-6 text-sm-end d-none d-sm-block">
                            Designed by Jeet, Abhi & Darshi
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <!-- JavaScript -->
    <script src="${pageContext.request.contextPath}/adminResource/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/adminResource/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/adminResource/js/app.js"></script>

    <script>
        function fetchDashboardData() {
            fetch('/admin/dashboard/data')
                .then(response => response.json())
                .then(data => {
                    document.getElementById('totalStudents').textContent = data.totalStudents;
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
                    labels: ['Students', 'Companies'],
                    datasets: [{
                        data: [students, companies],
                        backgroundColor: ['#007bff', '#28a745'],
                        hoverBackgroundColor: ['#0056b3', '#1d8231'],
                    }]
                }
            });
        }

        window.onload = fetchDashboardData;
    </script>
<!-- JAVASCRIPT -->
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

</body>
</html>
