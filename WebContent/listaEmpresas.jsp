<%@page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	Lista de empresas: <br />
	
	
	
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${ empresa.nome }</li>	
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