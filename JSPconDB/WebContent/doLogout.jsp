<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="user" class="it.alfasoft.fabrizio.bean.UtenteBean" scope="session"/>
<jsp:useBean id="msg" class="it.alfasoft.fabrizio.bean.MessaggioBean"
	scope="request" />
<c:remove var="user"/>
<% msg.logout(); %>
<jsp:forward page="login.jsp"/>