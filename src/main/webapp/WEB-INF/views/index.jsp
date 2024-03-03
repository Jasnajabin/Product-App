<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
<title>Insert title here</title>

</head>
<body background="https://media1.giphy.com/media/4N1FZFE5AGO3qrUGkw/giphy.gif">
	<div class="container mt-4">
	<div class="row">
	<div class="col-md-12">
	<h1 class="text-center mb-3">Welcome To ProductApp</h1>
	<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products }" var="p">
    <tr>
      <th scope="row">THXS${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#x20B9;${p.price }</td>
      <td><a href="delete/${p.id}"><i class="fa-solid fa-trash-can text-danger"></i></a>
      
      <a href="update/${p.id }"><i class="fa-solid fa-pen text-primary"></i></a>
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
	
	<div class="container text-center">
	
	<a href="addproduct" class="btn btn-success">Add Product</a>
	</div>
	
	</div>
	
	</div>
	
	
	</div>







</body>
</html>