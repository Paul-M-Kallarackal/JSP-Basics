<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Authenticate user
    if (username.equals("admin") && password.equals("admin123")) {
        session.setAttribute("username", username);
        response.sendRedirect("main.jsp");
    } else {
        out.println("Invalid login credentials");
    }
%>
