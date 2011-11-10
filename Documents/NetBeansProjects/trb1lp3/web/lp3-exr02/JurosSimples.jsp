<%-- 
    Author     : Ranier
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" isErrorPage="true" %>
<%
//bloco inicial                
    int meses;
    double vi = 1000;
    double j;
    try {
        meses = Integer.parseInt(request.getParameter("eMeses"));
    } catch (Exception E) {
        meses = 12;
    }
    try {
        j = Float.parseFloat(request.getParameter("eJuros"));
    } catch (Exception E) {
        j = 1;
    }
    double vf = 0;
    // -----------------
    //vp porque tem que ser feito o calculo antes de lançar...
    vf = vi * ((1 + (j * 0.01f)) * meses);
%>

<%@page contentType="text/html"%>
<html>
    <head>
        <%-- <link rel="stylesheet" type="text/css" href="Estilo.css" /> --%>
        <title>Resultado</title>
    </head>
    <body>
        <h1>Cálculo de juros simples</h1>
        <p>
            Para um investimento inicial de: R$ 
            <%= vi%>
            a uma taxa de juros simples de: 
            <%= j%>% ao mês,
            você terá: R$ 
            <%= vf%>
            ao final de: 
            <%= meses%>Meses!
        </p>
        <A HREF="index.jsp">Voltar à pagina anterior</A>
