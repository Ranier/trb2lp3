<%-- 
    Author     : Ranier
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
        <title>Formulario</title>
    </head>
    <body>
        <form action='GeraTabela.jsp' method='get'>
            <h2>Formulário de Criação de Tabelas</h2><br>
            Primeiro valor:<input name='eVal1'><br><br>
            Segundo valor:<input name='eVal2'><br><br>
            <input type=submit value='Calcular'>
            <input type=reset value='Cancelar'>
        </form>
    </body>
</html>

