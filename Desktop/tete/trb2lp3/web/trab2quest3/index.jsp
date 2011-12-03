<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/cabecalho-exercicio.jspf"%>
<%@include file="../WEB-INF/jspf/menu-exercicio.jspf"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela de Jogos</title>
    </head>

    <body>
        <form method="POST" action="../CampeonatoServlet">
            <label for="Valor">Valor:</label>
            <input type="number" name="Valor"/>
            <label for="Meses">Prestações:</label>
            <input type="number" name="Meses"/>
            <label for="juros">Taxa de Juros:</label>
            <input type="number" name="juros"/>
            <input type=reset value='Cancelar'>  
            <input type="submit" value="Calcular" />
        </form>
        <%@include file="../WEB-INF/jspf/rodape.jspf"%>

    </body>
</html>