<%@ page import="com.adobe.acs.commons.forms.helpers.FormHelper,
				com.adobe.acs.commons.forms.Form,
				com.adobe.acs.commons.forms.helpers.ForwardAsGetFormHelper"%>
<%@include file="/libs/foundation/global.jsp"%>
<%
// PostRedirectGetFormHelper formHelper = sling.getService(ForwardAsGetFormHelper.class);
// ForwardAsGetFormHelper formHelper = sling.getService(ForwardAsGetFormHelper.class);
// FormHelper formHelper = sling.getService(PostRedirectGetFormHelper.class);

FormHelper formHelper = sling.getService(ForwardAsGetFormHelper.class);

//  Get the Form
Form form = formHelper.getForm("hibernate-validator-mine", slingRequest);

// Validation should be moved to a supporting OSGi Service - placement only for illustration
if(form.get("myField") == null || form.get("myField").length() < 10) {
    form.setError("myField", "What kind of answer is: " + form.get("myField"));
}

if(form.hasErrors()) {
     formHelper.renderForm(form, currentPage, slingRequest, slingResponse);
} else {
    // Save the data; or whatever you want
    slingResponse.sendRedirect("/content/webnid/success.html");
}
%>