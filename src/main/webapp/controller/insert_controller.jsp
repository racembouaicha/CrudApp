<%@page import="CRUD.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String user_name=request.getParameter("user_name");

 
Insert_Values obj_Insert_Values=new Insert_Values();

obj_Insert_Values.insert_values(id, user_name, email, mobile);


%>

<script type="text/javascript">

 window.location.href="http://localhost:8080/CrudApp/insert_values.jsp"
</script>


</body>
</html>