<%@page import="java.util.List"%>
<%@page import="it.alfasoft.fabrizio.bean.UtenteBean"%>
<%@page import="it.alfasoft.fabrizio.service.Service"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="u" class="it.alfasoft.fabrizio.bean.UtenteBean" scope="page"/> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Elenco Utenti</h1>
	<table>
		<thead>
			<tr>
				<th>n°</th>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Username</th>
			</tr>
		</thead>
		<% 
		Service s = new Service();
		int i=1;
		for(UtenteBean U: s.getAll()){
		%>
			<tr>
			<td><%=i %></td>
			<td><%=U.getNome() %></td>
			<td><%=U.getCognome() %></td>
			<td><%=U.getUsername() %></td>
			</tr>
		<%
			i++;
		}
		%>
	</table>
	
	
	<%
	
	List<UtenteBean> lista = s.getAll();
	for(UtenteBean uTemp : lista){
		u.setCognome(uTemp.getCognome());
		u.setNome(uTemp.getNome());
		u.setUsername(uTemp.getUsername());
	}
	%>
	<table>
		<tbody>
			<tr>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Username</th>
			</tr>
			<c:forEach items="lista" var="UT">
				<tr>
					<td><c:out value="${UT.nome}"></c:out></td>
					<td><c:out value="${UT.cognome}"></c:out></td>
					<td><c:out value="${UT.username}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>