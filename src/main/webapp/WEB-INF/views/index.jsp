<html>
<head>
<%@include file="./base.jsp" %>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="path/to/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    background-image: url('photo.png'); /* Use the same folder, so no path needed */
    background-size: cover;
    /* Additional background-related properties */
}
</style>
    
</head>
<body>

  <div class="container mt-3" >
    <div class="row">
      
      <div class="col-mid-12">
        
         <div style="background-color: lightblue"> <h1 class="text-center mb-3"> Welcom To Product App </h1> </div>
         
         
			<table class="table table-striped">
			   <thead>
			     <tr>
			       <th scope="col">S.No</th>
			       <th scope="col">Product Name</th>
			       <th scope="col">Description </th>
			       <th scope="col">Price </th>
			       <th scope="col">Action </th>
			    </tr>
			  </thead>
			  <tbody>
			     <c:forEach items="${products}" var="p">
			        <tr>
			          <th scope="row">${p.id}</th>
			          <td>${p.name}</td>
			          <td>${p.description }</td>
			          <td class="font font-bold">&#x20B9 ${p.price}</td>
			          <td> 
                          <a href="delete/${p.id}"> <i class="fa fa-trash text-danger" style="font-size: 20px"></i> </a>
                          <a href="update/${p.id}"> <i class="fas fa-pen-nib" style="font-size: 20px"></i> </a>

			           </td>
			        </tr>
                 </c:forEach>
			  </tbody>
		  </table>
		  
		  <hr>
		  <div class="text-center">
		     <a class="btn btn-primary" href="addproduct" role="button">AddProduct </a>
		  </div>		  

      </div>
    
    </div>
  </div>
</body>
</html>
