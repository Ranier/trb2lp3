<%-- 
    Author     : Ranier
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" isErrorPage="true" %>
<%
    int meses;
    double vi;
    double j;
    try {
        meses = Integer.parseInt(request.getParameter("eMeses"));
    } catch (Exception E) {
        meses = 12;
    }
    try {
        vi = Float.parseFloat(request.getParameter("eValinicio"));
    } catch (Exception E) {
        vi = 5000;
    }
    try {
        j = Float.parseFloat(request.getParameter("eJuros"));
    } catch (Exception E) {
        j = 1;
    }
    double vf = 0;
    double vp = 0;
    String resultado1 = "";
    String resultado2 = "";
    vp = vi / meses;
    //vp porque tem que ser feito o calculo antes de lançar na
    //abaixo fazer a formula do juros composto : vf = vi * ((1+j*0.01f) ^ meses)
    vf = vi * (Math.pow((1 + (j * 0.01f)), meses));
    double diferenca;
    diferenca = vf - (vp * meses);
    //abaixo a opção que verificar se o usuário lucrou ou não.
    if (diferenca <= 200) {
        resultado1 = "Mau negócio!";
    } else if (diferenca > 200) {
        resultado2 = "Bom negócio!";
    }

    // R$5.000,00 à uma taxa de rendimentos de 1% ao mês, para 12 meses (use ;
    //valor final = valor.(1+taxa de juros)^12)
    //resultadofinal = (5000*((1.01)^12));

%>
<%@page contentType="text/html"%>

<style type="text/css">
    h2.teste
    {
        color : red;
        text-align: center;
    }
    h2.teste2
    {
        color : green;
        text-align: center;
    }    
</style>

<html>
    <head>
        <%-- <link rel="stylesheet" type="text/css" href="Estilo.css" /> --%>
        <title>Resultado</title>
    </head>
    <body>
        <h1>Cálculo de juros composto</h1>
        <h2 class="teste"><%= resultado1%></h2>
        <h2 class="teste2"><%= resultado2%></h2>
        <p>Para um investimento inicial de: R$
            <%= vi%>
            a uma taxa de juros compostos de:
            <%= j%>% ao mês,
            você terá: R$
            <%= vf%>
            ao final de:
            <%= meses%>Meses!</p>
        <A HREF="index.jsp">Voltar à pagina anterior</A>
