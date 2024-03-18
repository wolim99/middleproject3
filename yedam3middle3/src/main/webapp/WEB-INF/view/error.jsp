<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String msg = (String) request.getAttribute("message");
%>

<h3>에러페이지</h3>
<p><%=msg %></p>

<a href="main.do">메인페이지로 이동</a>
