<%@page import="it.alfasoft.fabrizio.bean.UtenteBean"%>
<%@page import="it.alfasoft.fabrizio.service.Service"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteBeanDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		for(UtenteBean u: s.getAll()){
		%>
			<th><%=i %></th>
			<th><%=u.getNome() %></th>
			<th><%=u.getCognome() %></th>
			<th><%=u.getUsername() %></th>
		<%
			i++;
		}
		%>
		
	</table>


</body>
</html>