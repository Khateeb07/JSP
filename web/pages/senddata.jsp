<%-- 
    Document   : senddata
    Created on : Oct 9, 2025, 11:07:20 AM
    Author     : khateeb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Data Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid">
            <form action="rdata" method="POST" class="row justify-content-center my-4">
                <div class="col-md-7 my-2">
                    <label for="firstname">First Name:</label>
                    <input type="text" class="form-control" id="firstname" placeholder="Enter your first name" name="fname"/>
                </div>
                <div class="col-md-7 my-2">
                    <label for="lastname">Last Name:</label>
                    <input type="text" class="form-control form-label" id="lastname" placeholder="Enter your last name" name="lname"/>
                </div>               
                <input type="submit" value="Login" class="btn btn-primary col-md-7 my-3"/>
            </form>
        </div>
    </body>
</html>
