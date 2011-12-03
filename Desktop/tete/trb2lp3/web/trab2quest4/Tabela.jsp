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
            <tbody>
                <tr>
                    <td>(getnome time 1)</td>
                    <td>(getgols time 1)</td>
                    <td> X </td>
                    <td>(getgols time 2)</td>
                    <td>(getnome time 2)</td>
                </tr>
            </tbody>
        </table>
    </body>
    <%@include file="../WEB-INF/jspf/rodape.jspf"%>
</html>