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
<title>Checkout</title>
</head>
<body>
    <h1>Checkout</h1>
    <%
        // Retrieve product and quantity from the form data
        String product = request.getParameter("product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        // Define the price of each product
        double price = 0;
        if (product.equals("1")) {
            price = 10.00;
        } else if (product.equals("2")) {
            price = 20.00;
        } else if (product.equals("3")) {
            price = 30.00;
        }
        
        // Calculate the total price of the purchase
        double total = price * quantity;
        
        // Display the purchase details
        out.println("<p>Product: " + product + "</p>");
        out.println("<p>Quantity: " + quantity + "</p>");
        out.println("<p>Price per unit: " + price + "</p>");
        out.println("<p>Total price: " + total + "</p>");
    %>
</body>
</html>
