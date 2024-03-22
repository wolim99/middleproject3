<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div style="width: 800px; margin: auto" >
<h3>회원가입</h3>
<form action="addMember.do" method="post">
	<table class="table">
		<tr>
			<th>아이디</th>
			<th><input type="text" name="memId" class="form-control"
				required placeholder="아이디"></th>
		</tr>
		<tr>
			<th>비밀번호</th>
			<th><input type="password" name="memPw" class="form-control"
				required placeholder="비밀번호"></th>
		</tr>
		<tr>
			<th>이름</th>
			<th><input type="text" name="memName" class="form-control"
				required placeholder="이름"></th>
		</tr>
		<tr>
			<th>전화번호</th>
			<th><input type="text" name="memPhone" class="form-control"  placeholder="전화번호"></th>
		</tr>
		<tr>
			<th>메일</th>
			<th><input type="text" name="memMail" class="form-control"  placeholder="메일주소"></th>
		</tr>
		<tr>
			<th>주소</th>
			<td><input style="width: 160px; display: inline-block;" type="text" name="postcode" id="postcode" class="form-control" placeholder="우편번호">
			<input type="button" style="display: inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" name="address" id="address" class="form-control" placeholder="주소">
			<input type="text" name="detailAddress" id="detailAddress" class="form-control" placeholder="상세주소">
			<input type="text" name="extraAddress" id="extraAddress" class="form-control" placeholder="참고항목"></td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn btn-outline-primary">등록</button>
				<button type="reset" class="btn btn-outline-danger">취소</button>
		</tr>
	</table>
</form>
</div>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>
