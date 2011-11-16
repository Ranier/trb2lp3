<%-- 
    Author     : Ranier
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 5</title>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
    </head>
    <body>
        <%
            int n1;
            int n2;
            try {
                n1 = Integer.parseInt(request.getParameter("eVal1"));
            } catch (Exception E) {
                n1 = 1;
            }
            try {
                n2 = Integer.parseInt(request.getParameter("eVal2"));
            } catch (Exception E) {
                n2 = 1;
            }
        %>
        <h2>Resultado:</h2>
        <TABLE id="tabela" BORDER=1>

            <tr>
                <TH></TH>
                <% for (int c = 0; c < 11; c++) {%>
                <th><%=c%></th> 
                <%}%>
            </tr>

            <%for (int d = n1; d <= n2; d++) {%>
            <tr><th><%=d%></th>
                <% for (int i = 0; i < 11; i++) {%>
                <td><%=d * i%></td> 
                <%}%>
            </tr>
            <%}%>



        </TABLE>
        <A id="voltar" HREF="index.jsp">Voltar a página anterior</A>
    </body>
</html>
