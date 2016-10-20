<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="msg" class="it.alfasoft.fabrizio.bean.MessaggioBean" scope="request"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="doRegister.jsp" method="post">
<input type="text" name="nome" placeholder="Nome"/>
<input type="text" name="cognome" placeholder="Cognome"/>
<input type="text" name="username" placeholder="Username"/>
<input type="password" name="password" placeholder="Password"/>
<input type="submit" value="Registrati!"/>
</form>
<%=msg.getMessaggio()%>
<form action="login.jsp">
    <input type="submit" value="Accedi!" />
</form>

</body>
</html>