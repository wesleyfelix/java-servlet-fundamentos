<%@page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	
	<c:if test="${ not empty empresa}">
		Empresa ${ empresa } cadastrado com sucesso!
	</c:if>
	
	<a href="/gerenciador/entrada?acao=NovaEmpresaForm">Nova empresa</a>
	<br>
	<br>
	Lista de empresas: <br />
	
	
	
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			
			<li>
				${ empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
			<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${ empresa.id }">edita</a>
			<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${ empresa.id }">remove</a>
			</li>	
		</c:forEach>
	</ul>
	
	
	<%-- 
	<ul>
	<%
		List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas");//${empresas}
		for (Empresa empresa : lista) {
	%>
		<li><%= empresa.getNome() %></li>
	<%
		}
	%>
	</ul> --%>
		
</body>
</html>