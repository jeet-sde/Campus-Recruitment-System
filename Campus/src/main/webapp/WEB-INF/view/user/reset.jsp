<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reset Password</title>
    <script>
    function validatePasswords() {
        let newPassword = document.getElementById("newPassword").value;
        let confirmPassword = document.getElementById("confirmPassword").value;

        if (newPassword !== confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }
        return true;
    }
    </script>
</head>
<body>
    <h2>Reset Your Password</h2>
    <form action="<%= request.getContextPath() %>/reset-password" method="post" onsubmit="return validatePasswords()">
        <input type="hidden" name="token" value="<%= request.getParameter("token") %>" />

        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required minlength="8">

        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required minlength="8">

        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
