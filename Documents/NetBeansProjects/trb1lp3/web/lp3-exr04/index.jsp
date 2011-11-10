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
        <form action='ComparaValores.jsp' method='post'>
            <h2>Formulário de Digitação de Dados</h2><br>
            Primeiro numero:<input name='eValN1'><br><br>
            Segundo numero:<input name='eValN2'><br><br>
            Terceiro numero:<input name='eValD'><br><br>
            <input type=submit value='Calcular'>
            <input type=reset value='Cancelar'>
        </form>
    </body>
</html>
<html>

