<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form action="addMember.do" method="post">
	<table class="table">
		<tr>
			<th>아이디</th>
			<th><input type="text" name="memId" class="form-control"
				required></th>
		</tr>
		<tr>
			<th>비밀번호</th>
			<th><input type="password" name="memPw" class="form-control"
				required></th>
		</tr>
		<tr>
			<th>이름</th>
			<th><input type="text" name="memName" class="form-control"
				required></th>
		</tr>
		<tr>
			<th>번호</th>
			<th><input type="text" name="memPhone" class="form-control"></th>
		</tr>
		<tr>
			<th>매일</th>
			<th><input type="text" name="memMail" class="form-control"></th>
		</tr>
		<tr>
			<th>주소</th>
			<th><input type="text" name="memAddr" class="form-control"></th>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn btn-primary">저장</button>
		</tr>
	</table>
</form>

