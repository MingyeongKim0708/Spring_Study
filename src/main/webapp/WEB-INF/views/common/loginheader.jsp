<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<div>
	<c:if test="${empty loginUser}">
		<a href="login" class="btn btn-outline-warning">로그인</a>
		<a href="signup" class="btn btn-outline-primary">회원가입</a>
	</c:if>
	<c:if test="${not empty loginUser}">
		${loginUser}님 반갑습니다.
		<a href="logout" class="btn btn-outline-danger">로그아웃</a>
		<c:if test="${'admin' eq loginUser }">
			<!-- eq : EL 표현식에서 같다라는 뜻 -->
			<a href="users">관리자페이지</a>
		</c:if>
	</c:if>
</div>
<hr>