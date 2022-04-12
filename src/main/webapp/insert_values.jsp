<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>
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

<center class="container">

<h1>Insert Values</h1>

<form  action="controller/insert_controller.jsp">

<label for="id">id</label> <input type="text" id="id" name="id" class="form-control"><br>
<label for="user_name">User Name </label><input type="text"  id="user_name" name="user_name" class="form-control"><br>
<label for="mobile">Mobile</label><input type="text" id="mobile" name="mobile" class="form-control"><br>
<label for="email">Email</label><input type="text" id="email" name="email" class="form-control"><br>



<input type="submit" value="Insert" class="btn btn-primary">

</form>

<hr>


<%
Read_Values obj_Read_Values=new Read_Values();

List<User_Bean> list=obj_Read_Values.get_values(); 


Iterator<User_Bean> it_list=list.iterator();
%>
<table class="table table-striped table-hover">
<tr>
	<th>Id</th>
	<th>User Name</th>
	<th>Email</th>
	<th>Mobile</th>
	<th>Edit</th>
	<th>Delete</th>
	</tr>
<%
while(it_list.hasNext()){
	User_Bean obj_User_Bean=new User_Bean();
	obj_User_Bean=it_list.next();
	
	
%>
	
			<tr>	
					<td><%=obj_User_Bean.getId() %></td>
					<td><%=obj_User_Bean.getUser_name() %></td>
					<td><%=obj_User_Bean.getEmail() %></td>
					<td><%=obj_User_Bean.getMobile() %></td>	
					
					<td>
					<a class="btn btn-success" href="edit.jsp?id=<%=obj_User_Bean.getId()%>">Edit</a>
					
					</td>	
					<td>
					<a class="btn btn-danger" href="controller/delete_controller.jsp?id=<%=obj_User_Bean.getId()%>">Delete</a>
					
					</td>	
			</tr>
<%	 
}
%>
</table>


</center>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>