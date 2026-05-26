<%-- 
    Document   : jstl1
    Created on : Oct 13, 2025, 10:46:48 AM
    Author     : zed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="bg-primary">
        <h1>Hello World!</h1>
        <c:set var="age" value="22" scope="session"/>
        <h4><%=session.getAttribute("age")%></h4>
        <c:remove var="age" scope="session"/>
        <h4><%=session.getAttribute("age")%></h4>
        <c:set var="name" value="Carl Johnson" scope="session"/>
        <h4>${sessionScope.name}</h4>
        <c:set var="num" value="10" scope="session"/>
        
        <!-- If implementation -->
        <c:if test="${sessionScope.num eq 10}">
            <h1>Yes, Condition is true</h1>
        </c:if>
        <c:if test="${sessionScope.num eq 2}">
            <h1>Yes, Condition is true</h1>
        </c:if>
        <c:if test="${sessionScope.name eq 'Carl Johnson'}">
            <h1>Yes, condition is true</h1>
        </c:if>
            
        <!-- Switch case implementation -->
        <c:choose>
            <c:when test="${sessionScope.num eq 4}">
                <h3>Case 1</h3>
            </c:when>
            <c:when test="${sessionScope.num eq 10}">
                <c:out value="${sessionScope.num}" default="Default"/>
            </c:when>
            <c:otherwise>
                <h3>Default case</h3>
            </c:otherwise>
        </c:choose>
                <c:redirect url="http://localhost:8080/jsp/pages/login.jsp"/>
        
        <!-- If-else implementation -->
        <c:choose>
            <c:when test="${sessionScope.num eq 4}">
                <h3>Case 1</h3>
            </c:when>
            <c:otherwise>
                <h3>Default case</h3>
            </c:otherwise>
        </c:choose>        
        
        
    </body>
</html>
