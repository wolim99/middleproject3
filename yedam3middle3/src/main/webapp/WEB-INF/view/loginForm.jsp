<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- 모달 트리거 버튼 -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginModal">
  로그인/회원가입
</button>

<!-- 모달 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">로그인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- 여기에 로그인 폼을 삽입 -->
        <c:if test="${!empty message }">
          <p style="color: red;">${message}</p>
        </c:if>
        <form action="login.do" method="post">
          <div class="mb-3">
            <label for="memId" class="form-label">아이디</label>
            <input type="text" class="form-control" id="memId" name="memId">
          </div>
          <div class="mb-3">
            <label for="memPw" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="memPw" name="memPw">
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-primary">로그인</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="window.location.href='addMemberForm.do';" class="btn btn-primary">신규회원가입</button>
      </div>
    </div>
  </div>
</div>