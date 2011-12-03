<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/cabecalho-exercicio.jspf"%>
<%@include file="../WEB-INF/jspf/menu-exercicio.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcula Imc</title>
    </head>
    <body>
        <h1>Calcular IMC</h1>
        <form action='../CalcImc' method='post'>
            <label for="ealtura">Altura:</label>
            <input type="number" name="ealtura"/>
            <label for="epeso">Peso:</label>
            <input type="number" name="epeso"/>
            <input type="submit" value="Calcular" />
            <input type=reset value='Cancelar'>  
        </form> 
    </body>
    <%@include file="../WEB-INF/jspf/rodape.jspf"%>
</html>