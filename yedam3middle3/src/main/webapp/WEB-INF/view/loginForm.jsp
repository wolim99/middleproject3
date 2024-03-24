<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>
<hr>
<!-- 모달 -->
<div style="text-align: center;">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="loginModalLabel">로그인</h5>
        </div>
        <div class="modal-body">
            <!-- 여기에 로그인 폼을 삽입 -->
            <c:if test="${!empty message }">
                <p style="color: red;">${message}</p>
            </c:if>
            <form action="login.do" method="post">
                <div class="mb-3" style="text-align: left;">
                    <label for="memId" class="form-label">아이디</label>
                    <input type="text" class="form-control" id="memId" name="memId">
                </div>
                <div class="mb-3"style="text-align: left;">
                    <label for="memPw" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" id="memPw" name="memPw">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-outline-primary">로그인</button>
                    <button type="button" class="btn btn-outline-danger"
                        data-bs-dismiss="modal">취소</button>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" onclick="window.location.href='addMemberForm.do';"
                class="btn btn-outline-info">신규회원가입</button>
        </div>
    </div>
</div>
</div>

            <!-- 로그인 모달 -->
            <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                  <div class="modal-content">
                     
                      

                  </div>
              </div>
          </div>
          <!--로그인 모달끝-->