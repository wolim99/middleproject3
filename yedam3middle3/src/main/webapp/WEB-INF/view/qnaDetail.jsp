<%@page import="co.yedam.my.Qna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<h3>상세 조회</h3>
	<form action="modifyQna.do">
		<input type="hidden" value="${qna.inqNo }" name="inqNo">
		<!-- qna는 QnaDetailControl에서 정의됨. -->
		<table class="table">
			<tr>
				<th>글번호</th>
				<td>${qna.inqNo }</td>
			</tr>
			<tr>
				<th>제목</th>
				<!-- <td><input type="text" value="${qna.inqTitle }" name="inqTitle"></td> -->
				<td><textarea name="inqTitle" cols="50" rows="1">${qna.inqTitle }</textarea></td>
			</tr>
			<tr>
				<th>내용</th>
				<!-- <td><input type="text" value="${qna.inqContent }" name="inqContent" style="width:500px;height:50px"></td> -->
				<td><textarea name="inqContent" cols="100" rows="10">${qna.inqContent }</textarea></td>
			</tr>
			<tr>
				<th>작성자 번호</th>
				<td>${qna.memNo }</td>
				<th>작성일자</th>
				<td>${qna.inqDate }</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
				<c:choose>
					<c:when test="${qna.memNo eq logMemNo }">
						<button type="submit" class="btn btn-outline-primary">수정</button>
						<button type="button" class="btn btn-outline-danger"
								onclick="removeFunc()">삭제</button>
						<a href="qnaMain.do"><button type="button" class="btn btn-outline-info">돌아가기</button></a>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn btn-outline-primary" disabled>수정</button>
						<button type="button" class="btn btn-outline-danger" disabled
								onclick="removeFunc()">삭제</button>
						<a href="qnaMain.do"><button type="button" class="btn btn-outline-info">돌아가기</button></a>		
					</c:otherwise>
				</c:choose></td>
			</tr>
		</table>
	</form>
<script>
function removeFunc() {
	let form = document.querySelector('form');
	console.log(form.action);
	form.action = 'removeQna.do';
	form.submit();
}
</script>