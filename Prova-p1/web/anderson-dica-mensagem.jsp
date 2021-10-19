<%-- 
    Document   : anderson-dica-mensagem
    Created on : 4 de out. de 2021, 13:41:28
    Author     : Anderson Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numbers = (ArrayList)session.getAttribute("auth-numbers");
%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<hr>
<%@include file="WEB-INF/jspf/bootstreap.jspf" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if (session.getAttribute("auth-username")==null){%>
        <div>Você não tem permisssão para ver essa página</div>
        <%}else if (numbers == null ){%>
        <div>Não foram gerados numeros para você. : </div>
        <%}else{%>
        <table border="1">
            <tr>
                <th>Número</th>
            </tr>
            <% for(int n: numbers) {%>
            <tr>
                <td><%= n %></td>
            </tr>
            <%}%>
            
        </table>
        <h1>Mensagens</h1>
        <%}%>
        <h2><a href="index.jsp">Voltar</a></h2>
    </body>
</html>
