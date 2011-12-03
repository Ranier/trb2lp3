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
            <label for="nt1">Nome Time 1:</label>
            <input type="text" name="nt1"/>
            <label for="golt1">Placar:</label>
            <input type="number" name="golt1"/>
            <label for="nt2">Nome Time 2:</label>
            <input type="text" name="nt2"/>
            <label for="golt2">Placar:</label>
            <input type="number" name="golt2"/>
            <input type="submit" value="Calcular" />
            <input type=reset value='Cancelar'>            
            <input type="submit" value="Adicionar" />
        </form>
        <%@include file="../WEB-INF/jspf/rodape.jspf"%>

    </body>
</html>

