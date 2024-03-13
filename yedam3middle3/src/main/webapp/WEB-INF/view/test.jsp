<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid py-5 mb-5 hero-header">
	<!-- 값 선언 -->
	<!-- <c:set var="msg" value="hello" ></c:set> -->
	<c:set var="msg" value="hello" />
	
	<!-- 선언한 값 출력 -->
	<!-- <c:out value="${msg }"></c:out> -->
	<p>message: <c:out value="${msg }"/></p>
	
	<!-- JSTL을 이용한 출력 -->
	<p>${3>6 }</p>
	<p>${board }</p>
	
	<!-- 자바스크립트영역(원래는 이렇게 출력가능) -->
	<script>
		let str = `${3> 6}`;
		console.log(str);
	</script>
	
	<!-- if -->
	<c:if test="${msg == hello} " >
	 <p>참입니다</p>
	</c:if>
	<c:if test="${msg != hello} " >
	 <p>거짓입니다</p>
	</c:if>
	
	<!-- if else -->
	<c:choose>
	 <c:when test="${msg == hello} " >
	  <p>참입니다</p>
	 </c:when>
	 <c:otherwise>
	  <p>거짓입니다</p>
	 </c:otherwise>
	</c:choose>
	
	<!-- for(int i=1;1<=5;i++) -->
	<c:forEach begin="1" end="5" var="i">
		<p>${i }</p>
	</c:forEach>

	<!-- view/main.jsp -->
	<h3>Main Page</h3>
</div>

	