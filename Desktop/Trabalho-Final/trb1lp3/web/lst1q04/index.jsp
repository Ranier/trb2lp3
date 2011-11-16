<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<html>
    <head>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
        <title>Exercicio 4</title>
    </head>
    <body>
        <div id="centraliza">
            <form action='ComparaValores.jsp' method='post'>
                <h2>Formulário de Digitação de Dados</h2><br>
                Primeiro numero:<input name='eValN1'><br><br>
                Segundo numero:<input name='eValN2'><br><br>
                Terceiro numero:<input name='eValD'><br><br>
                <input type=submit value='Calcular'>
                <input type=reset value='Cancelar'>
            </form>
    </body>
</div>
</html>
