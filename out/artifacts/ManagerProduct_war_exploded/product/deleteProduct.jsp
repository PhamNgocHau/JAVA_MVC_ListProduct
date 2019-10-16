<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/15/2019
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
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
            <tr>
                <td><input type="submit" value="Delete Product"></td>
                <td><a href="/products">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
