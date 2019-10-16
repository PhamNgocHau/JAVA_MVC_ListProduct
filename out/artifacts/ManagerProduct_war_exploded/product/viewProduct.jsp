<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/15/2019
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to Product list</a>
</p>
<table>
    <tr>
        <td>nameProduct:</td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>priceProduct:</td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>descriptionProduct:</td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>
</table>
</body>
</html>
