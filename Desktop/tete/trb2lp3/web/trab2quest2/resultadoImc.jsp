<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/cabecalho.jspf"%>
<%@include file="../WEB-INF/jspf/menu.jspf"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>IMC</title>
   </head>
   <body>
       <jsp:useBean id="pessoa" scope="request" class="br.cesjf.lp3.modelo.CalcImc" />
      <h1>Resultado IMC</h1>
      <p>O produto de <samp><jsp:getProperty name="pessoa" property="ealtura" /></samp> por <samp><jsp:getProperty name="pessoa" property="epeso" /></samp> é <samp><jsp:getProperty name="pessoa" property="imc" /></samp>!</p>
   </body>
   <%@include file="../WEB-INF/jspf/rodape.jspf"%>
</html>



