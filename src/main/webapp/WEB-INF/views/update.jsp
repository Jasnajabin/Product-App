<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
<title>Insert title here</title>
<style>
body{
background-repeat: no-repeat;
background-size:1520px;

}


</style>
</head>
<body background="https://cdn.dribbble.com/users/729829/screenshots/2249241/ping-pong.gif">
<div class="mx-auto p-5" style="width: 600px;">
 

<div class="card text-white bg-warning mb-3" style="max-width: 50rem; border-radius: 10px;">
  <div class="card-header">Update Product Details</div>
  <div class="card-body">
  <form action="${pageContext.request.contextPath }/form" method="post">
  <input type="text" value="${products.id }" name="id">
		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label> <input
				type="text" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Update product name" name="name" value="${products.name }">
		</div>

		<div class="form-group">
			<label for="exampleFormControlTextarea1">Description</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="3" name="description">${products.description }</textarea>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Price</label> <input type="text"
				class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder=" Update Price" name="price" value="${products.price }">
		</div>

		<div class="container text-center">
			<a href="${pageContext.request.contextPath }/"
				class="btn btn-danger">Back</a>
			<button type="submit" class="btn btn-outline-info">Update</button>
		</div>
	</form>
  
  
  </div>
  </div>
</div>

</body>
</html>