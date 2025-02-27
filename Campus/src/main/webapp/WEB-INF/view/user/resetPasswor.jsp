<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Your Password</h2>
    
    <form action="<%= request.getContextPath() %>/request-password-reset-form" method="post">
        <input type="hidden" name="token" value="<%= request.getParameter("token") %>" />

        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required>

        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>

        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
