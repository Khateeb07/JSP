<%-- 
    Document   : welcome
    Created on : Oct 3, 2025, 10:36:33 AM
    Author     : khateeb
--%>

<%@page info="This is the Welcome JSP Page" language="java" import="java.util.ArrayList, java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to JSP</title>
    </head>
    <body>
        <%="Hey! Khateeb"%>
        <br>
        <%! int age=28; %>
        <% String name="Harry Potter";
        out.println(name+"<br>");
        out.println("Age: "+age+"<br>");
        %>
        <%=getServletInfo()%>
        <%  ArrayList<String> al=new ArrayList<>();
            al.add("Harry");
            al.add("Hermione");
            al.add("Ron");
            for(String s: al) {
                out.println("<p>"+s+"</p>");
            }
            HashMap<String, Integer> hm=new HashMap<>();
            hm.put("Harry", 1);
            hm.put("Hermione", 2);
            hm.put("Ron", 3);
            String tchr=application.getInitParameter("teacher");
            out.println("<h4>"+tchr+"</h4>");
        %>
    </body>
</html>
