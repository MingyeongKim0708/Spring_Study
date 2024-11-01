<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ include file="../common/header.jsp"%>

<div class="container mt-5">
	<!-- 페이지 제목 -->
	<h2 class="mb-4 text-center" style="color: var(--heading-color);">게시글
		목록</h2>
	<hr>

	<!-- 게시글 목록 테이블 -->
	<table
		class="table table-hover table-bordered align-middle text-center"
		style="background-color: var(--surface-color);">
		<thead class="table-light">
			<tr>
				<th>No.</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boards}" var="board">
				<tr>
					<td>${board.id}</td>
					<td><a href="detail?id=${board.id}"
						style="color: var(--accent-color); text-decoration: none;">
							${board.title} </a></td>
					<td>${board.writer}</td>
					<td>${board.viewCnt}</td>
					<td>${board.regDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 글 등록 버튼 -->
	<div class="d-flex justify-content-end">
    	<a class="btn-get-started" href="/writeform">글등록</a>
	</div>
	
	
</div>

<%@ include file="../common/footer.jsp"%>
