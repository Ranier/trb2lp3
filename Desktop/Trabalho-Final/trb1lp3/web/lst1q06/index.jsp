<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<html>
    <title>Exercicio 6</title>
    <body>
    <head>    
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
    </head>
    <div id="centraliza">
        <h1>Calculo de IMC</h1>
        <form action='CalculaIMC.jsp' method='post'>
            <br><br>Altura:<input name='ealtura'><br><br>
            Peso:<input name='epeso'><br><br>
            <input type=submit value='Calcular'>
            <input type=reset value='Cancelar'>
        </form>
    </div>
</body>
</html>
