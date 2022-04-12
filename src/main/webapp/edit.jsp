<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>


	<%
	String id=(String)request.getParameter("id");
	
	
	Edit_values obj_Edit_values=new Edit_values();
	
	User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(id);
	
	%>


<center class="container">

<h1>Edit Values</h1>

<form action="controller/edit_controller.jsp">

<label for="id">id</label> <input type="text" id="id"  name="id" class="form-control" value="<%=id%>"><br>
<label for="user_name">User Name </label><input type="text" id="user_name"  name="user_name" class="form-control" value="<%=obj_User_Bean.getUser_name()%>"><br>
<label for="mobile">Mobile</label><input type="text" id="mobile"  name="mobile" class="form-control" value="<%=obj_User_Bean.getMobile()%>"><br>
<label for="email">Email</label><input type="text" id="email"  name="email" class="form-control" value="<%=obj_User_Bean.getEmail()%>"><br>



<input type="submit" value="Edit" class="btn btn-primary">

</form>
</center>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>