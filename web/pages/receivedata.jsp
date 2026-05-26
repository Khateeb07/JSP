<%-- 
    Document   : receivedata
    Created on : Oct 9, 2025, 11:07:28 AM
    Author     : zed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receive Data Page</title>
    </head>
    <body>
        <h1>Received Form Data</h1>
        <%
            String fn=request.getParameter("fname");
            String ln=request.getParameter("lname");
            out.println("<h4>"+fn+"</h4>");
            out.println("<h4>"+ln+"</h4>");
            String col=pageContext.getServletConfig().getInitParameter("college");
            out.println("<h4>"+col+"</h4>");
            String tchr=application.getInitParameter("teacher");
            out.println("<h4>"+tchr+"</h4>");
        %>
    </body>
</html>
