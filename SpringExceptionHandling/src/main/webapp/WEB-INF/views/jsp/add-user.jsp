<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
	.error {
		color: red;
	}
</style>
</head>

<body>
	<h2>add-user.jsp</h2>
	<form:form action="addUser" method="POST" modelAttribute="user">
		Id: <form:input path="id"/> <form:errors path="id" cssClass="error"/> <br/><br/>
		Name: <form:input path="name"/> <form:errors path="name" cssClass="error"/> <br/><br/>
		Email: <form:input path="email"/> <form:errors path="email" cssClass="error"/> <br/><br/>
     <button type="submit">Submit</button>
	</form:form>
</body>
</html>
