<%-- 
    Document   : iserror
    Created on : Oct 8, 2025, 11:16:56 AM
    Author     : zed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Response from error page!</h1>
        <%="<h4>"+exception.getMessage()+"</h4>"%>
    </body>
</html>
