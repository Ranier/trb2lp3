<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>TABELA DO CAMPEONATO</title>
   </head>
   <body>
        <table>
            <thead>
                <tr>
                    <th>IMC</th>
                    <th>Classificação</th>
                </tr>
            </thead>
            <tbody>
        <c:choose>
            <c:when test="${pessoa.calcImc() <= 18.5}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>< 18,5</td>
                    <td>Magreza</td>
                </tr>
                
        <c:choose>
            <c:when test="${pessoa.calcImc() > 18.5 && pessoa.calcImc() < 25}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>18,6 - 24,9</td>
                    <td>Saudável</td>
                </tr>

        <c:choose>
            <c:when test="${pessoa.calcImc() >= 25 && pessoa.calcImc() < 30}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>25,0 - 29,9</td>
                    <td>Peso em excesso</td>
                </tr>

        <c:choose>
            <c:when test="${pessoa.calcImc() >= 30 && pessoa.calcImc() < 35}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>30,0 - 34,9</td>
                    <td>Obesidade Grau I</td>
                </tr>
                
        <c:choose>
            <c:when test="${pessoa.calcImc() >= 35 && pessoa.calcImc() < 40}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>35,0 - 39,9</td>
                    <td>Obesidade Grau II</td>
                </tr>
        <c:choose>
            <c:when test="${pessoa.calcImc() >= 40}">
                <tr class="sucesso">
            </c:when>
            <c:otherwise>
                <tr>
            </c:otherwise>
        </c:choose>
                    <td>>= 40,0</td>
                    <td>Obesidade Grau III</td>
                </tr>
            </tbody>
        </table>
         </body>
   <%@include file="../WEB-INF/jspf/rodape.jspf"%>
</html>