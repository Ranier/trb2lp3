<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>CALCULO DE JUROS</title>
   </head>
   <body>
       <p>Para um investimento inicial de <%= out.print(Valor) %> a uma taxa de juros composto de <%= out.print(Juros) %>,
       você terá <%= out.print(ValorFinal) %> no final de <%= out.print(Meses) %> meses!</p>
   </body>
   <%@include file="../WEB-INF/jspf/rodape.jspf"%>
</html>