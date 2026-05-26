<%-- 
    Document   : checkError
    Created on : Oct 8, 2025, 11:16:41 AM
    Author     : zed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="iserror.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  int x=10/0;
            out.println(x);
        %>
    </body>
</html>
