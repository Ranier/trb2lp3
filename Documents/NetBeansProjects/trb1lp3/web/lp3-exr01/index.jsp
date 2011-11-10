<%-- 
    Author     : Ranier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date data = new Date();
    data.getTime();
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hora Certa</title>
    </head>
    <body>
        <h1>São Exatamente: <%= data%></h1>
        <A HREF="index.jsp">Atualizar</A>
    </body>
</html>
