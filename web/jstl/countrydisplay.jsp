<%-- 
    Document   : countrydisplay
    Created on : Oct 14, 2025, 10:48:48 AM
    Author     : khateeb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Country Info Page</title>
    </head>
    <body>
        <h1>Country Information</h1>
        <%  request.getAttribute("hashmap");
            request.getAttribute("str");
        %>
        <%--<c:forEach--%>
        <select name="country">
            <option value="">Select Country</option>
            <c:forEach var="x" items="${requestScope.hashmap}">
                <option value="${x.key}">${x.value}</option>
            </c:forEach>
        </select>
        <select name="string">
            <option value="">String</option>
            <c:forTokens var="x" items="${requestScope.str}" delims="-">
                <option value="${x}">${x}</option>
            </c:forTokens>
        </select>
    </body>
</html>
