<%@page import="CRUD.Delete_values"%>
<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
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
 

Delete_values obj_Delete_values=new Delete_values();

obj_Delete_values.delete_value(id);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8080/CrudApp/insert_values.jsp"
</script>


</body>
</html>