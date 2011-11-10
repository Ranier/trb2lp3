<%-- 
    Author     : Ranier
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
        <title>Formulario</title>
    </head>
    <body>
        <form action='JurosSimples.jsp' method='get'>
            <h2>Formulário de juros Simples</h2><br>
            Valor Inicial:<input name='eValinicio'><br><br>
            Juros:<input name='eJuros'><br><br>
            Quantidades de Parcelas:<input name='eMeses'><br><br>
            <input type=submit value='Calcular'>
            <input type=reset value='Cancelar'>
        </form>
    </body>
</html>
<html>
