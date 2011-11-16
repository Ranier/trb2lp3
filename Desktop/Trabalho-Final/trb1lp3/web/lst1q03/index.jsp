<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<html>
    <head>
        <title>Exercicio 3</title>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
    </head>
    <div id="centraliza">
        <body>
            <form action='CalculaJurosComposto.jsp' method='get'>
                <h2>Formulário de juros Compostos</h2><br>
                Valor Inicial:<input name='eValinicio'><br><br>
                Juros:<input name='eJuros'><br><br>
                Quantidades de Parcelas:<input name='eMeses'><br><br>
                <input type=submit value='Calcular'>
                <input type=reset value='Cancelar'>
            </form>
        </body>
    </div>
</html>
