<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${!empty message }">
  <p style="color: red;">${message }</p>
</c:if>

<form action="login.do" method="post">
  <table class="table">
    <tr>
      <th>아이디</th>
      <td><input type="text" name="memId"></td>
    </tr>
    <tr>
      <th>비밀번호</th>
      <td><input type="password" name="memPw"></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <button type="submit" class="btn btn-primary">로그인</button>
        <button class="btn btn-primary">신규회원가입</button>
      </td>
    </tr>
  </table>
</form>
