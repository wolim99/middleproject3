<%@page import="co.yedam.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%-- <% Member member = (Member) request.getAttribute("member"); %> --%>

<h3>회원 탈퇴</h3>
<form action="removeMember.do">
	<input type="hidden" value=${logMemNo } name="mno">
	<div class="col-md-12 col-lg-6 col-xl-5">
		<table class="table">
			<thead>
				<tr>
					<th>회원번호</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${logMemNo }</td>
					<td>${logName }</td>
				</tr>
				<tr>
					<td align="center">
						<button type="submit" class="btn btn-primary">회원 탈퇴</button> <a
						href="myPage.do"><button class="btn btn-secondary">취소</button></a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
