<%-- 
    Document   : redirect-page
    Created on : 27-mar-2014, 15.39.15
    Author     : afinamore
--%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat,
		java.util.Date"%>
<!DOCTYPE html>
<%
    String gruppo = (String) request.getParameter("g");
    String utente = (String) request.getParameter("u");

	String nome = currentNode.getSession().getNode("/content/hibernate-validator/grupo-"+gruppo+"/dati-utenti").getProperty("nome").getString();

	SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy hh.mm.ss.S aa");
	String formattedDate = dateFormat.format(new Date()).toString();

	if ( nome.equals("geek")) {
		
		response.sendRedirect(currentNode.getPath()+".hibernate-validator.html?validation=error");
	}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=formattedDate%></h1>
		<div>Il contenuto gruppo <%=gruppo%> utente <%=utente%> é stati creato ed ho fatto la redirect</div>
    </body>
</html>
