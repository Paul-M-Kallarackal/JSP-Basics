<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
    <h1>Welcome <%= username %>!</h1>
    <h2>Billing System</h2>
    <table>
        <tr>
            <th>Product</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
        <%
            // Define products
            String[][] products = {
                {"1", "SQLMap", "10.00"},
                {"2", "BurpSuite", "20.00"},
                {"3", "MetaSploit", "30.00"}
            };
            
            // Display products in the table
            for (String[] product : products) {
        %>
        <tr>
            <td><%= product[0] %></td>
            <td><%= product[1] %></td>
            <td><%= product[2] %></td>
        </tr>
        <%
            }
        %>
    </table>
    
    <h3>Checkout</h3>
    <form method="post" action="checkout.jsp">
        <label for="product">Select a product:</label>
        <select id="product" name="product">
            <% for (String[] product : products) { %>
                <option value="<%= product[0] %>"><%= product[0] %> - <%= product[2] %></option>
            <% } %>
        </select>
        <br>
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" min="1" value="1">
        <br>
        <input type="submit" value="Checkout">
    </form>
</body>
</html>
