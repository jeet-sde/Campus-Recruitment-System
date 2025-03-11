<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Your Password</h2>
    <c:if test="${not empty token}">
        <form action="/reset-password" method="post">
            <input type="hidden" name="token" value="${token}">
            
            <label for="newPassword">Enter new password:</label>
            <input type="password" id="newPassword" name="newPassword" required>
            
            <button type="submit">Reset Password</button>
        </form>
    </c:if>
    <c:if test="${empty token}">
        <p>Invalid or expired reset link.</p>
    </c:if>
</body>
</html>
