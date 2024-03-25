<%@page import="co.yedam.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%-- <% Member member = (Member) request.getAttribute("member"); %> --%>

<h3>회원 탈퇴</h3>
<form action="removeMember.do" method="post">
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
					<th>비밀번호 입력</th>
					<td><input type="password" id="chkpw">  <input class="btn btn-outline-info" type="button" id="chk" value="비밀번호 확인"></td>
				</tr>
				<tr>
					<td align="center">
						<button type="submit" class="btn btn-outline-primary" id="delbtn" disabled>회원 탈퇴</button>
						<a href="myPage.do"><button type="button" class="btn btn-outline-secondary">취소</button></a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<script>
$('#chk').on('click', function(e){
		let logppw = ${logPw}
		console.log("pw:"+logppw);
		console.log("val:"+$('#chkpw').val());
		
		console.log("bool:"+ ($('#chkpw').val() == ''));
	if($('#chkpw').val() == ''){
		alert('비밀번호를 입력하세요.')
	 }else if($('#chkpw').val() != ${logPw}){
		 alert('비밀번호가 틀립니다');
		 $("#delbtn").attr("disabled",true);
	}else if($('#chkpw').val() == logppw) {
		alert('비밀번호가 확인되었습니다.');
		$("#delbtn").removeAttr("disabled");
	} 	
})

</script>

