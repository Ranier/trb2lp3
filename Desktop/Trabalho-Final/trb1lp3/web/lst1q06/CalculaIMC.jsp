<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" isErrorPage="true" %>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<%
    int p = Integer.parseInt(request.getParameter("epeso"));
    float a = Float.parseFloat(request.getParameter("ealtura"));
    double IMC;
    try {
        //Aqui são colocados os dados...
    } catch (Exception e) {
        System.out.print("Somente valor numerico");
    }
    IMC = p / (a * a);
%>
<%@page contentType="text/html"%>
<style type="text/css">
    destaque
    {  
        background-color:red;
    }
</style>
<html>
    <head>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
        <title>Resultado</title></head>
    <body>
        <h2>Resultado:</h2>
        Altura:
        <%= a%>
        Peso:
        <%= p%>
        IMC:
        <%= IMC%>

        <%
            int indica = 0;
            if (IMC < 18.5) {
                indica = 1;
            } else if (IMC < 25) {
                indica = 2;
            } else if (IMC < 30) {
                indica = 3;
            } else if (IMC < 35) {
                indica = 4;
            } else if (IMC < 40) {
                indica = 5;
            } else {
                indica = 6;
            }

        %>
        <TABLE id="centraliza" BORDER=1>            
            <th>
                IMC
            </th>
            <th>
                Classificação
            </th>                
        </tr>
        <TR>
            <%
                if (indica == 1) {
            %>
            <TD><destaque>Magreza</destaque></TD>
    <TD><destaque>Abaixo de 18.5</destaque></TD>
    <% } else {%>
<TD>Magreza</TD>
<TD>Abaixo de 18.5 </TD>
<%}%>
</tr>
<TR>
    <%
        if (indica == 2) {
    %>
    <TD><destaque>Saudável</destaque></TD>
<TD><destaque>entre 18,6 e 24,9</destaque></TD>
<% } else {%>
<TD>Saudável</TD>
<TD>entre 18,6 e 24,9</TD>
<%}%>
</tr>
<TR>
    <%
        if (indica == 3) {
    %>
    <TD><destaque>Peso em excesso</destaque></TD>
<TD><destaque>Entre 25 e 29,9</destaque></TD>
<% } else {%>
<TD>Peso em excesso</TD>
<TD>Entre 25 e 29,9</TD>
<%}%>
</tr>
<TR>
    <%
        if (indica == 4) {
    %>
    <TD><destaque>Obesidade grau 1</destaque></TD>
<TD><destaque>Entre 30 e 34,9</destaque></TD>
<% } else {%>
<TD>Obesidade grau 1</TD>
<TD>Entre 30 e 34,9</TD>
<%}%>
</tr>
<TR>
    <%
        if (indica == 5) {
    %>
    <TD><destaque>Obesidade Grau 2 (severa)</destaque></TD>
<TD><destaque>Entre 35 e 39,9</destaque></TD>
<% } else {%>
<TD>Obesidade Grau 2 (severa)</TD>
<TD>Entre 35 e 39,9</TD>
<%}%>
</tr>
<TR>
    <%
        if (indica == 6) {
    %>
    <TD><destaque>Obesidade Grau 3 (mórbida)</destaque></TD>
<TD><destaque>No mínimo 40</destaque></TD>
<% } else {%>
<TD>Obesidade grau 3 (mórbida)</TD>
<TD>No mínimo 40</TD>
<%}%>
</tr>
</TABLE>
</body>
<A id="voltar" HREF="index.jsp">Voltar a página anterior</A>
</html>

