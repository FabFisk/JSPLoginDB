<%@page import="it.alfasoft.fabrizio.service.Service"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <jsp:useBean id="utente" class="it.alfasoft.fabrizio.bean.UtenteBean" scope="request"/>
    <jsp:setProperty property="*" name="utente"/>
    <jsp:useBean id="msg" class="it.alfasoft.fabrizio.bean.MessaggioBean" scope="request"/>
    <%
    	Service s = new Service();    
    	if(utente.isValid()){
    		//se i campi sono validi
    		if(!s.cercaUtenteNomeCognome(utente.getNome(), utente.getCognome())){
    			//se la persona non è gia registrata
    			if(!s.cercaUtenteUser(utente.getUsername())){
    				//se l'username è disponibile
    				String psw = s.codificaPsw(utente.getPassword());
    				utente.setPassword(psw);
    				s.registraUtente(utente);
    %>
   		<jsp:forward page="registrato.jsp"/>
    <%				
    			}else{
    				//username non disponibile
    				msg.usermaneEsiste();
    %>		
    	<jsp:forward page="register.jsp"/>	
    <%			}
    		}else{
    			//utente gia registrato
    			msg.userEsiste();
    %>		
    	<jsp:forward page="register.jsp"/>	
    <%
    		}
    	}else{
    		//campi non validi
    		msg.campiNonValidi();
    %>		
    	<jsp:forward page="register.jsp"/>	
    <%
    	}
   	%>			
       
    	


    