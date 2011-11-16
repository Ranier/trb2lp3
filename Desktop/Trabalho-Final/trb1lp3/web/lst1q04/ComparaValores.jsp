<%-- 
    Author     : Ranier
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="\Tratamentos\rodape.html"%>
<%@include file="\Tratamentos\Cabecalho.html"%>
<%@include file="\Tratamentos\Menu.html"%>
<%@page errorPage="true" %>
<%
    int n1 = Integer.parseInt(request.getParameter("eValN1"));
    int n2 = Integer.parseInt(request.getParameter("eValN2"));
    int d = Integer.parseInt(request.getParameter("eValD"));
    //verificar N1<=N2/3 e 1<=D<=N1;
    String opc1 = "";
    String opc2 = "";
    boolean erro = false;
    if (n1 <= (n2 / 3)) {
        //System.out.print("Atendeu!");
        opc1 = "Sim";
    } else {
        //System.out.print("Não Atendeu!");
        erro = true;
        opc1 = "Não";
    }

    if (1 <= d && d <= n1) {
        opc2 = "Sim";
        // System.out.print("Atendeu!");
    } else {
        erro = true;
        opc2 = "Não";
        // System.out.print("Não atendeu!");
    }
    if (erro == true) {
        opc2 = "ERRO!";
        opc1 = "ERRO!";
    }

%>

<%@page contentType="text/html"%>
<html>
    <head>
        <link rel=stylesheet type="text/css" href="/trb1lp3/Tratamentos/Estilo.css">
        <title>Resultado</title>
    </head>
    <body>
        <h1> Comparação de Valores</h1>

        <p id="resultado">Resultado:</p><br><br>

        <p>Para a primeira que : N1<=N2/3
            Com esses valores essa condição <%= opc1%> se cumpriu!
            Para a primeira que : 1<=D<=N1
            Com esses valores essa condição <%= opc2%> se cumpriu!</p>



    </body>
</html>