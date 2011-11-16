<%-- 
    Author     : Ranier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<%
//GregorianCalendar calendar = new GregorianCalendar();
//Date data = calendar.getTime();
//SimpleDateFormat formato = new SimpleDateFormat("dd/MMMM/yyyy HH:mm:ss");
//formato.format(data);
//Colocar na variável da data formatada --> formato.format(data);
    Date data = new Date();
    data.getTime();
%>
<html>
    <head>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 1</title>
    </head>
    <body>
        <A HREF="index.jsp">Atualizar</A>
        <h1>São Exatamente: <%= data%></h1>
    </body>
</html>
