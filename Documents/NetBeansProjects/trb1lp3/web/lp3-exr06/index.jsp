<%-- 
    Author     : Ranier
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
    <head>
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
    </head>
    <h1>Calculo de IMC</h1>
    <form action='CalculaIMC.jsp' method='post'>
        <br><br>Altura:<input name='ealtura'><br><br>
        Peso:<input name='epeso'><br><br>
        <input type=submit value='Calcular'>
        <input type=reset value='Cancelar'>
    </form>
</body>
</html>
<html>
