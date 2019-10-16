<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/15/2019
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Product</title>
    <style>
        table , tr , td{
            border: 1px solid blue;
            text-align: center;
            height: 50px;
        }
        td{
            color: red;
        }
    </style>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=createProduct">Create new Product</a>
</p>
<table>
    <tr>
        <td>nameProduct</td>
        <td>priceProduct</td>
        <td>descriptionProduct</td>
        <td>EditProduct</td>
        <td>DeleteProduct</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>
                <a href="/products?action=viewProduct&id=${product.getId()}">${product.getName()}</a>
            </td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>
                <a href="/products?action=editProduct&id=${product.getId()}">edit</a>
            </td>
            <td>
                <a href="/products?action=deleteProduct&id=${product.getId()}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
