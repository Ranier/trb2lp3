<%-- 
    Author     : Ranier
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    double n1 = Integer.parseInt(request.getParameter("eValN1"));
    double n2 = Integer.parseInt(request.getParameter("eValN2"));

%>
<%@page contentType="text/html"%>
<html>
    <head>
        <%-- <link rel="stylesheet" type="text/css" href="Estilo.css" /> --%>
        <title>Resultado</title>
    </head>
    <body>
        <h2>Resultado:</h2>
        <TABLE BORDER=1>
            <%
                for (int i = 0; i < 10; i++) {
            %>
            <tr>
                <%
                    for (int j = 0; j < n2 - n1 + 1; j++) {
                %>
                <td><%= i%></td>
                <%}%>
            </tr>
            <%
                }
            %>
        </TABLE>
        <A HREF="index.jsp">Voltar à pagina anterior</A>
