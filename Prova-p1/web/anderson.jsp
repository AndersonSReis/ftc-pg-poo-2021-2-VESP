<%-- 
    Document   : anderson
    Created on : 4 de out. de 2021, 13:43:43
    Author     : Anderson Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <%}else{%>
        <h1>Dados</h1>
        <h1>Anderson da Silva</h1>
        <h2>RA:1290481712040</h2>        
        <h3>Situado: Rua D N° 459, Itaguaí-Mongaguá-SP</h3>
        <h3>Semestre Inicial: 1 de 2018</h3>
        <h3><a href="https://github.com/AndersonSReis">https://github.com/AndersonSReis</a><h3/>
            
            <table border="2" style="color: red" >
                <tr>
                    <th>N°</th>
                    <th>Materia</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Empreendedorismo</td>
                </tr>
                <tr>
                     <td>2</td>
                    <td>Gestão de Prohetos</td>
                </tr>
                <tr>
                     <td>3</td>
                    <td>Segurança da Informação</td>
                </tr>
                <tr>
                     <td>4</td>
                    <td>Programação O. Objeto</td>
                </tr>
            </table>
        <h2><a href="index.jsp">Voltar</a></h2>
        <%}%>
    </body>
</html>
