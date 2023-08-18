<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>

  <div class="container mt-3">
     <div class="row">
       
       <div class="col-md-6 offset-md-3"> 
          
          <h1 class="text-center mb-3 ">Update Product Detail </h1>
          
            <form action="${pageContext.request.contextPath}/handleform" method="POST" >
            
                 <input type="hidden" value=${product.id} name="id"/>
                 
                <div class="form-group mb-2">
				    <label for="name" 
				            class="form-label">Product Name </label>
				    <input type="text" 
				           class="form-control" 
				           id="name" 
				           value="${product.name}"
				           name="name"
				           aria-describedby="emailHelp">
				           
				</div>
				
				<div class="form-group mb-2">
				   
				   <label for="description"> Product Description</label>
				   <textarea class="form-control"
				             placeholder="enter product description"      
				             rows="5" id="description" name="description" >${product.description}
				             </textarea>
				   
				</div>
				
				<div class="form-group mb-2">
				    <label for="name" 
				            class="form-label">Product Price</label>
				    <input type="text" 
				           class="form-control" 
				           id="price" 
				           name="price"
				           value="${product.price}"
				           placeholder="enter product price"
				           aria-describedby="emailHelp">
				           
				</div class="container text-centre mb-2">
				
				  <a href="${pageContext.request.contextPath}/"
				     class="btn btn-outline-danger"> Back </a>
		         <button type="submit" class="btn btn-primary">Update </button>
				<div>
				
				</div>
  
            </form>
       </div>
     
     </div>
  
  </div>


</body>
</html>