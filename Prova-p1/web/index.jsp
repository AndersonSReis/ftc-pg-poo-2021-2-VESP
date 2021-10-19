<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 13:37:55
    Author     : Anderson Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jspf" %>
<hr>
<%@include file="WEB-INF/jspf/bootstreap.jspf" %>
 <% 
     int sessions = 0;
     ArrayList<String> sessionList = null;
         if (application.getAttribute("sessionList")!=null){       
        sessionList = (ArrayList)application.getAttribute("sessionList");
        sessions = sessionList.size();
        }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Home</h1>
        <h3>Session: <u><%=  sessions %></u></h3>
        <%if (session.getAttribute("auth-username")!= null && sessionList != null){%>
        <ul>
            <%for (String name : sessionList) {%>
            <li><%= name %></li>
            
            <%}%>
        </ul>
        <%}%>
    </body>
</html>
