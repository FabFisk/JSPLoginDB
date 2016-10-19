<%@page import="it.alfasoft.fabrizio.service.Service"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="user" class="it.alfasoft.fabrizio.bean.UtenteBean" scope="session"/>
     <jsp:setProperty property="*" name="user"/>
    
    <%
    	Service s = new Service();
    	if((user.getUsername().isEmpty() && user.getUsername()!=null)
    			&&(user.getPassword().isEmpty() && user.getPassword()!=null)){
    		//se i campi sono validi/decripta password
    			String psw = s.codificaPsw(user.getUsername());
    			user.setPassword(psw);
    		if(s.cercaUtenteUserPsw(user.getUsername(), user.getPassword())){
    			//se l'utente è registrato
    %>
    
    <% 	   			
    		}else{
    			//user o psw errati
    %>
    
    <% 	    			
    		}
    %>
    
    <% 	   		
    	}else {
    		//campi non validi
    %>
    
    <% 		
    	}    			
    %>
		