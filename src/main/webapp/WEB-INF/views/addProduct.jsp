<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
<title>Insert title here</title>
<style>
body{
background-repeat: no-repeat;
background-size: cover;
}


</style>
</head>
<body background="https://i.pinimg.com/originals/c7/ac/38/c7ac38d1acee823f1b65107300d59690.gif">
<div class="mx-auto p-5" style="width: 600px;">
 

<div class="card text-white bg-warning mb-3" style="max-width: 50rem;">
  <div class="card-header">Fill The Product Details</div>
  <div class="card-body">
  <form action="handle" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label> <input
				type="text" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Product name" name="name">
		</div>

		<div class="form-group">
			<label for="exampleFormControlTextarea1">Description</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="3" name="description"></textarea>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Price</label> <input type="text"
				class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Price" name="price">
		</div>

		<div class="container text-center">
			<a href="${pageContext.request.contextPath }/"
				class="btn btn-danger">Back</a>
			<button type="submit" class="btn btn-outline-info">Add</button>
		</div>
		
		
 
  
	</form>
  
  
  </div>
  </div>
</div>

	
</body>
</html>