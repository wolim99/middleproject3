<%@page import="co.yedam.my.Qna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<h3>상세 조회</h3>
<form action="">
	<input type="hidden" value="${qna.inqNo }" name="inqNo"> <!-- qna는 QnaDetailControl에서 정의됨. -->
	<table class="table">
		<tr>
			<th>글번호</th>
			<td>${qna.inqNo }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${qna.inqTitle }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${qna.inqContent }</td>
		</tr>
		<tr>
			<th>작성자 번호</th>
			<td>${qna.memNo }</td>
			<th>작성일자</th>
			<td>${qna.inqDate }</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><c:choose>
					<c:when test="${qna.memNo eq logMemNo }">
						<button type="submit" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-warning"
							onclick="removeFunc()">삭제</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn btn-primary" disabled>수정</button>
						<button type="button" class="btn btn-warning" disabled
							onclick="removeFunc()">삭제</button>
					</c:otherwise>
				</c:choose></td>
		</tr>
	</table>
</form>