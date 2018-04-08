<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Custom Login Page</title>
        <style>
            .failed {
                color: red;
            }
        </style>
    </head>
    <body>
        <h3>My Custom Login Page</h3>
        <hr>
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
                   method="post">

            <%--Check for loggin error--%>
            <c:if test="${param.error !=null}">
                <i class="failed">Sorry, You enterd invalid username/password</i>
            </c:if>

            <p>
                User name: <input type="text" name="username"> <%--Default: name="username"--%>
            </p>
            <p>
                Password: <input type="password" name="password"> <%--Default: name="password"--%>
            </p>
            <input type="submit" value="Login">
        </form:form>
    </body>
</html>