<div class="vertical-menu">
    <div data-simplebar class="h-100">
        <div id="sidebar-menu">
            <ul class="metismenu list-unstyled" id="side-menu">
                <li><a href="index" class="waves-effect"> 
                    <i class="bx bx-home"></i> 
                    <span key="t-layouts">Home</span>
                </a></li>
                
   <!--  <li><a href="/user/Profile" class="waves-effect"> 
    <i class="mdi mdi-google-drive"></i> 
    <span key="t-layouts">Profile</span>
</a></li>-->
   
                <li><a href="drive" class="waves-effect"> 
                    <i class="mdi mdi-google-drive"></i> 
                    <span key="t-layouts">Company</span>
                </a></li>

                <li><a href="/user/reset" class="waves-effect"> 
                    <i class="mdi mdi-lock-reset"></i> 
                    <span>Reset Password</span>
                </a></li>
                    <li><a class="dropdown-item text-danger" href="/logout">
                        <i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
                        <span key="t-logout">Logout</span>
                    </a></li>
            </ul>
 <!-- Logout -->
                
            <!-- Dark Mode Toggle (Moved Outside the List) -->
            <div class="text-center mt-3">
                <button id="theme-toggle" class="btn btn-outline-primary">
                    <i id="theme-icon" class="bx bx-moon"></i> Toggle Dark Mode
                </button>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for Dark Mode Toggle -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        console.log("✅ Script Loaded");

        const body = document.body;
        const toggleButton = document.getElementById("theme-toggle");
        const themeIcon = document.getElementById("theme-icon");
        const header = document.getElementById("page-topbar");
        const footer = document.querySelector(".footer");

        if (!toggleButton || !themeIcon || !header || !footer) {
            console.error("❌ Missing elements: Check header/footer/sidebar.");
            return;
        }

        console.log("✅ Found all elements");

        // Apply Theme Based on LocalStorage
        function applyTheme() {
            const theme = localStorage.getItem("theme") || "light";
            console.log("🔄 Applying theme:", theme);

            if (theme === "dark") {
                body.classList.add("dark-mode");
                header.classList.add("dark-mode");
                footer.classList.add("dark-mode");
                themeIcon.classList.replace("bx-moon", "bx-sun");
            } else {
                body.classList.remove("dark-mode");
                header.classList.remove("dark-mode");
                footer.classList.remove("dark-mode");
                themeIcon.classList.replace("bx-sun", "bx-moon");
            }
        }

        // Initial Theme Setup
        applyTheme();

        // Toggle Dark Mode on Click
        toggleButton.addEventListener("click", function () {
            console.log("🔘 Toggle Clicked");

            if (body.classList.contains("dark-mode")) {
                localStorage.setItem("theme", "light");
            } else {
                localStorage.setItem("theme", "dark");
            }

            applyTheme();
        });
    });
</script>

  <!-- Dark Mode Styles -->
    <style>
       /* Default Light Mode */
body {
    background-color: white;
    color: black;
    transition: background-color 0.3s, color 0.3s;
}

/* Dark Mode */
body.dark-mode {
    background-color: #1e1e2d;
    color: white;
}

/* Sidebar Styles */
.vertical-menu {
    width: 250px;
    height: 100vh;
    background-color: #f8f9fa;
    padding: 15px;
    position: fixed;
}

.vertical-menu a {
    display: block;
    padding: 10px;
    color: black;
    text-decoration: none;
}

.vertical-menu a:hover {
    background-color: #ddd;
}

/* Dark Mode Sidebar */
.dark-mode .vertical-menu {
    background-color: #121212;
}

.dark-mode .vertical-menu a {
    color: white;
}

.dark-mode .vertical-menu a:hover {
    background-color: #333;
}

/* Navbar (Header) Styles */
.navbar {
    margin-left: 260px;
    padding: 10px;
    background-color: #f8f9fa;
}

/* Dark Mode Navbar */
.dark-mode .navbar {
    background-color: #121212 !important;
}

/* Card Dark Mode */
.dark-mode .card {
    background-color: #2a2a3c !important;
    color: white;
}

/* Dark Mode for Header */
.dark-mode .navbar-header {
    background-color: #252538;
    color: white;
}

/* Dark Mode for Footer */
.dark-mode .footer {
    background-color: #252538;
    color: white;
}
       
    </style>
