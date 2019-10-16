<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Edit Product</title>
    <style>
        .message {
            color: red;
        }
    </style>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>

<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>nameProduct:</td>
                <td>
                    <input type="text" name="nameProduct" id="nameProduct" value="${requestScope["product"].getName()}">
                </td>
            </tr>
            <tr>
                <td>priceProduct:</td>
                <td>
                    <input type="text" name="priceProduct" id="priceProduct" value="${requestScope["product"].getPrice()}">
                </td>
            </tr>
            <tr>
                <td>descriptionProduct:</td>
                <td>
                    <input type="text" name="descriptionProduct" id="descriptionProduct" value="${requestScope["product"].getDescription()}">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Update Product">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
