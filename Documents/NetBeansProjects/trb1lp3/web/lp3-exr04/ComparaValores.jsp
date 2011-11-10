<%-- 
    Author     : Ranier
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
        <title>Resultado</title>
    </head>
    <body>
        <h3>Resultado:</h3>
        <br>Para a primeira que : N1<=N2/3<br>
        Com esses valores essa condição <%= opc1%> se cumpriu!<br>
        Para a primeira que : 1<=D<=N1<br>
        Com esses valores essa condição <%= opc2%> se cumpriu!<br><br>
        <A HREF="index.jsp">Voltar à pagina anterior e calcular novamente!</A>
        <A HREF="index.jsp">Voltar ao menu principal</A>

