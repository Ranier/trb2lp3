<%-- 
    Author     : Ranier
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 5</title>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
    </head>
    <body>
        <div id="centraliza">
            <form action='GeraTabela.jsp' method='get'>
                <h2>Formulário de Criação de Tabelas</h2><br>
                Primeiro valor:<input name='eVal1'><br><br>
                Segundo valor:<input name='eVal2'><br><br>
                <input type=submit value='Calcular'>
                <input type=reset value='Cancelar'>
            </form>
        </div>
    </body>
</html>

