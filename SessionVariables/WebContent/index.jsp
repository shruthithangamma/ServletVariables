<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email</th>
</tr>
	<c:forEach var="cust" items="${customerList}">
	<tr>
		
		<td><a href="<c:url value="CustomerInfo?custId=${cust.customerId}"/>"><c:out value="${cust.custFirstName }"/></a></td>
		<td><c:out value="${cust.custLastName }"/></td>
		<td><c:out value="${cust.custEmail }" /></td>
	</tr>
	</c:forEach>
</table>

</body>
</html>