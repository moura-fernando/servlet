<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.gerenciador.servlet.Empresa" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <c:if test="${not empty empresa}">
	   Empresa  ${empresa} cadastrada com sucesso!  <%-- Empresa  <%=nomeEmpresa %> cadastrada com sucesso! --%>  
	</c:if>	

    <h1>Lista de Empresas</h1> <br/>

    <ul>
    	<c:forEach items="${empresas}" var="empresa">
    		<li>${empresa.nome} - <fmt:formatDate pattern="dd/MM/yyyy" value="${empresa.dataAbertura}"/>
    			<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">editar</a>
    		<a href="/gerenciador/removeEmpresa?id=${empresa.id}">remove</a>
    		</li>
    	</c:forEach>
    </ul>
	
<%-- Outra possibilidade do forEach
 	<c:forEach var="i" begin="1" end="10" step="2">
       ${i} <br />
     </c:forEach> --%>

</body>
</html>