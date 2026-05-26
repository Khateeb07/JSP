<%-- 
    Document   : SignUp
    Created on : Oct 7, 2025, 10:28:37 AM
    Author     : zed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Page</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="">
            <%@include file="components/header.jspf" %>
            <nav class="navbar navbar-expand-md justify-content-end bg-dark">
                <ul class="navbar-nav nav-pills my-2">
                    <li class="nav-item">
                        <a class="nav-link active mx-5 px-4" href="#">Login</a>
                    </li>
                </ul>
            </nav>
            <div class="row">
                <%@include file="components/leftpane.jspf" %>
                <div class="col-md-9 border border-secondary">
                    <form action="#" method="POST" class="row justify-content-center my-1">
                        <div class="col-md-7 my-2">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email"/>
                        </div>
                        <div class="col-md-7 my-2">
                            <label for="password">Password</label>
                            <input type="text" class="form-control form-label" id="password" placeholder="Enter your password" name="pass"/>
                        </div>
                        <div class="col-md-7 my-2">
                            <label for="fname">First Name:</label>
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname"/>
                        </div>
                        <div class="col-md-7 my-2">
                            <label for="lname">Last Name:</label>
                            <input type="text" class="form-control form-label" id="lname" placeholder="Enter Last Name" name="lname"/>
                        </div>
                        <input type="submit" value="Sign Up" class="btn btn-primary col-md-7 my-3"/>
                    </form>
                </div>
            </div>
            <%@include file="components/footer.jspf" %>
        </div>
        <script src="js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
