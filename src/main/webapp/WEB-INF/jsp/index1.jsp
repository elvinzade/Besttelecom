<%@page contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello Spring</title>
</head>
<body>
<h2>ProductList</h2>
<div>
<table border="1">
   <tr>
       <th>Id</th>
       <th>Name</th>
       <th>Price</th>
       <th>Type</th>
       <th>Image</th>
       <th>Mark</th>

   </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.type}</td>
            <td>${product.image}</td>
            <td>${product.mark}</td>
            <td>
                <a href="/product/update?id=${product.id}">Update</a> &nbsp;
                <a href="/product/delete?id=${product.id}">Delete</a> &nbsp;
            </td>
        </tr>
    </c:forEach>
</table>
</div>

<h2>Add new Product</h2>
<form action="/product/add" method="post">
     Name: <input type="text" name="name"/> <br>
     Price: <input type="text" name="price"/> <br>
     Type: <input type="text" name="type"/> <br>
     Image: <input type="text" name="image"/> <br>
     Mark: <input type="text" name="mark"/> <br>
     <input type="submit" value="Add Product"> &nbsp;
     <input type="reset" value="Clear">
</form>

</body>
</html>