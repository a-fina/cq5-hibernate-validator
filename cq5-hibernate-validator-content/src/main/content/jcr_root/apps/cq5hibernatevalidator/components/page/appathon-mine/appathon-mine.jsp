<%@ page import="com.adobe.acs.commons.forms.helpers.FormHelper,
				com.adobe.acs.commons.forms.Form,
				com.adobe.acs.commons.forms.helpers.ForwardAsGetFormHelper"%>
<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Title of the document</title>
	<link rel="stylesheet" href="css/style-apparthon.css" type="text/css" media="all">
</head>

<body>
	<!--TOP-->
	<div class="containerTop">
			<h1>Iscrizione hibernate-validator mine</h1>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
				
			<div class="description_container">
				<div class="description_content left">
					<div class="description_img left"></div>
					<div class="description_text left">
						<p class="description_title">Singolo</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					</div>
				</div>
				<div class="description_content left">
					<div class="description_img left"></div>
					<div class="description_text left">
						<p class="description_title">Gruppo</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					</div>
				</div>
			</div>
	</div>
			
	<%
	/* FormHelper formHelper = sling.getService(PostRedirectGetFormHelper.class); */
	FormHelper formHelper = sling.getService(ForwardAsGetFormHelper.class);
	Form form = formHelper.getForm("hibernate-validator-mine", slingRequest);
	%>
	<%-- Check if the form has any errors, and display a list of all the error messages --%>
	
	<% if(form.hasErrors()) { %>
	    <h2 class="alert">Your form has errors!</h2>
	<% } %>	
		
	<!--FORM-->
	<form method="post" action="<%= formHelper.getAction(currentPage) %>">
	    <%= formHelper.getFormInputsHTML(form) %>
	
	    <fieldset>
	        <legend>Form Demo: <%= formHelper.getAction(currentPage) %></legend>
	
	        <div><%= form.getError("myField") %></div>
	        <label <%= form.hasError("myField") ? "class=\"error\"" : "" %>>My Field:</label>
	        <input type="text" name="myField" value="<%= form.get("myField") %>"/>
	
	        <input type="submit" value="Submit"/>
	    </fieldset>
	</form>
	<!--/FORM-->
	<!--SUBMIT-->
<!-- 		<div class="containerSubmit"> -->
<!-- 			<button type="submit" id="iscriviti" name="iscriviti">ISCRIVITI</button> -->
<!-- 		</div> -->
	<!--SUBMIT-->
</body>
</html>