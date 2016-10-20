<%@page import="it.alfasoft.fabrizio.service.Service"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="user" class="it.alfasoft.fabrizio.bean.UtenteBean" scope="session"/>
     <jsp:setProperty property="*" name="user"/>
    <jsp:useBean id="msg" class="it.alfasoft.fabrizio.bean.MessaggioBean" scope="request"/>
    <%
    	Service s = new Service();
     if(msg.getMessaggio().equals("Prima request!")){
    	if(user.isValid2()){
    		//se i campi sono validi/decripta password
    			String psw = s.codificaPsw(user.getPassword());
    			user.setPassword(psw);
    		if(s.cercaUtenteUserPsw(user.getUsername(), user.getPassword())){
    			//se l'utente è registrato
    %>
    	<jsp:forward page="welcome.jsp"/>
    <% 	   			
    		}else{
    			//user o psw errati
    			msg.pswErrata();
    %>
    	<jsp:forward page="login.jsp"/>
    <% 	    			
    		} 		
    	}else {
    		//campi non validi
    		msg.campiNonValidi();
    %>
    	<jsp:forward page="login.jsp"/>
    <% 		
    	}    	
     }else{
    %>
       	<jsp:forward page="login.jsp"/> 
    <% 		 
     }
    %>
		