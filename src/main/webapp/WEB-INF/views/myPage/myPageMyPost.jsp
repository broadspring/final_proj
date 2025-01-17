<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/myPage/myPage.css" />
<link rel="stylesheet" href="resources/css/fan/fan.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/jquery.selectric/1.10.1/selectric.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
<!--=============== [JS]===============-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.selectric/1.10.1/jquery.selectric.min.js"></script>
<script src="resources/js/fan/fanBoard.js"></script>
</head>
<body>
<div style="float: left;position: absolute;top: 100px;left: 30%;"><img src="resources/files/backgroundImg/basketball3.png"></div>
	<div style="float: right;position: absolute;top:400px; left : 57%;"><img src="resources/files/backgroundImg/coach2.jpg"></div>
	<div style="float: right;position: absolute;top:550px; left : 7%;"><img src="resources/files/backgroundImg/soccer1.png"></div>
	<div style="float: right;position: absolute;top:50px; left : 1%;"><img src="resources/files/backgroundImg/mypage1.png"></div>
	<div class="myPage_container">
		<div class="sidebar">
			<div class="side-wrapper">
				<div class="side-menu">
					</a> <a class="sidebar-link trending" href="myPage.info.go" style="text-decoration: none"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M10.835 12.007l.002.354c.012 1.404.096 2.657.242 3.451 0 .015.16.802.261 1.064.16.38.447.701.809.905a2 2 0 00.91.219c.249-.012.66-.137.954-.242l.244-.094c1.617-.642 4.707-2.74 5.891-4.024l.087-.09.39-.42c.245-.322.375-.715.375-1.138 0-.379-.116-.758-.347-1.064-.07-.099-.18-.226-.28-.334l-.379-.397c-1.305-1.321-4.129-3.175-5.593-3.79 0-.013-.91-.393-1.343-.407h-.057c-.665 0-1.286.379-1.603.991-.087.168-.17.496-.233.784l-.114.544c-.13.874-.216 2.216-.216 3.688zm-6.332-1.525C3.673 10.482 3 11.162 3 12a1.51 1.51 0 001.503 1.518l3.7-.328c.65 0 1.179-.532 1.179-1.19 0-.658-.528-1.191-1.18-1.191l-3.699-.327z" />
     </svg> 내 정보 보기
					</a> 
					<a class="sidebar-link" href="myPage.myPost.go?post_member=${sessionScope.loginAccount.member_id}" style="text-decoration: none"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M12.1535 16.64L14.995 13.77C15.2822 13.47 15.2822 13 14.9851 12.71C14.698 12.42 14.2327 12.42 13.9455 12.71L12.3713 14.31V9.49C12.3713 9.07 12.0446 8.74 11.6386 8.74C11.2327 8.74 10.896 9.07 10.896 9.49V14.31L9.32178 12.71C9.03465 12.42 8.56931 12.42 8.28218 12.71C7.99505 13 7.99505 13.47 8.28218 13.77L11.1139 16.64C11.1832 16.71 11.2624 16.76 11.3515 16.8C11.4406 16.84 11.5396 16.86 11.6386 16.86C11.7376 16.86 11.8267 16.84 11.9158 16.8C12.005 16.76 12.0842 16.71 12.1535 16.64ZM19.3282 9.02561C19.5609 9.02292 19.8143 9.02 20.0446 9.02C20.302 9.02 20.5 9.22 20.5 9.47V17.51C20.5 19.99 18.5 22 16.0446 22H8.17327C5.58911 22 3.5 19.89 3.5 17.29V6.51C3.5 4.03 5.4901 2 7.96535 2H13.2525C13.5 2 13.7079 2.21 13.7079 2.46V5.68C13.7079 7.51 15.1931 9.01 17.0149 9.02C17.4333 9.02 17.8077 9.02318 18.1346 9.02595C18.3878 9.02809 18.6125 9.03 18.8069 9.03C18.9479 9.03 19.1306 9.02789 19.3282 9.02561ZM19.6045 7.5661C18.7916 7.5691 17.8322 7.5661 17.1421 7.5591C16.047 7.5591 15.145 6.6481 15.145 5.5421V2.9061C15.145 2.4751 15.6629 2.2611 15.9579 2.5721C16.7203 3.37199 17.8873 4.5978 18.8738 5.63395C19.2735 6.05379 19.6436 6.44249 19.945 6.7591C20.2342 7.0621 20.0223 7.5651 19.6045 7.5661Z" />
     </svg> 내 글 보기
					</a>
					<a class="sidebar-link" href="myPage.pointInfo.go" style="text-decoration: none"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path
								d="M11.23 7.29V3.283c0-.427.34-.782.77-.782.385 0 .711.298.763.677l.007.104v4.01h4.78c2.38 0 4.335 1.949 4.445 4.38l.005.215v5.04c0 2.447-1.887 4.456-4.232 4.569l-.208.005H6.44c-2.38 0-4.326-1.94-4.435-4.379L2 16.905v-5.03c0-2.447 1.878-4.466 4.222-4.58l.208-.004h4.8v6.402l-1.6-1.652a.755.755 0 00-1.09 0 .81.81 0 00-.22.568c0 .157.045.32.14.459l.08.099 2.91 3.015c.14.155.34.237.55.237a.735.735 0 00.465-.166l.075-.071 2.91-3.015c.3-.31.3-.816 0-1.126a.755.755 0 00-1.004-.077l-.086.077-1.59 1.652V7.291h-1.54z" />
     </svg> 포인트 보기
					</a>
					  <!-- <a class="sidebar-link" href="myPage.service.go" style="text-decoration: none"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M17.769 8.382H22C22 4.985 19.964 3 16.516 3H7.484C4.036 3 2 4.985 2 8.338v7.324C2 19.015 4.036 21 7.484 21h9.032C19.964 21 22 19.015 22 15.662v-.313h-4.231c-1.964 0-3.556-1.552-3.556-3.466 0-1.915 1.592-3.467 3.556-3.467v-.034zm0 1.49h3.484c.413 0 .747.326.747.728v2.531a.746.746 0 01-.747.728H17.85c-.994.013-1.864-.65-2.089-1.595a1.982 1.982 0 01.433-1.652 2.091 2.091 0 011.576-.74zm.151 2.661h.329a.755.755 0 00.764-.745.755.755 0 00-.764-.746h-.329a.766.766 0 00-.54.213.727.727 0 00-.224.524c0 .413.34.75.764.754zM6.738 8.382h5.644a.755.755 0 00.765-.746.755.755 0 00-.765-.745H6.738a.755.755 0 00-.765.737c0 .413.341.75.765.754z" />
     </svg> 고객센터
					</a> <a class="sidebar-link" href="message.go" style="text-decoration: none"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M17.769 8.382H22C22 4.985 19.964 3 16.516 3H7.484C4.036 3 2 4.985 2 8.338v7.324C2 19.015 4.036 21 7.484 21h9.032C19.964 21 22 19.015 22 15.662v-.313h-4.231c-1.964 0-3.556-1.552-3.556-3.466 0-1.915 1.592-3.467 3.556-3.467v-.034zm0 1.49h3.484c.413 0 .747.326.747.728v2.531a.746.746 0 01-.747.728H17.85c-.994.013-1.864-.65-2.089-1.595a1.982 1.982 0 01.433-1.652 2.091 2.091 0 011.576-.74zm.151 2.661h.329a.755.755 0 00.764-.745.755.755 0 00-.764-.746h-.329a.766.766 0 00-.54.213.727.727 0 00-.224.524c0 .413.34.75.764.754zM6.738 8.382h5.644a.755.755 0 00.765-.746.755.755 0 00-.765-.745H6.738a.755.755 0 00-.765.737c0 .413.341.75.765.754z" />
     </svg> 쪽지
					</a> -->
				</div>
			</div>
		</div>
			<div class="main-container">
				<div class="modify-container">
				<div align="center" class="myPage_title">내 글</div>
					<%-- <c:choose>
						<c:when test="${sessionScope.loginAccount eq null}">
							<a href="" onclick="alert('로그인하세요')">새글쓰기</a>
						</c:when>
						<c:otherwise>
							<a href="mypost.insert.go">새글쓰기</a>
						</c:otherwise>
					</c:choose> --%>
					<div class="board__wrapper tableView">
					<br>
					<!-- 게시판 칼럼 (제목, 닉네임, 조회수 등등)-->
					<div class="board__header">
						<div class="board__cell num">카테고리</div>
						<div class="board__cell post_title">제목</div>
						<div class="board__cell reg_date">등록일</div>
						<div class="board__cell view_count">조회수</div>
					</div>
					<!-- forEach문으로 돌릴 구간, 샘플을 위해서 일단 게시글 4개정도 남김, function 할땐 하나만 하면됨 -->
					<c:forEach var="p" items="${MyPosts }">
						<div class="board__row">
							<div class="board__cell category">${p.post_category}</div>
							<div class="board__cell post_title">
								<a
									href="fan.detail.go?post_id=${p.post_id }&post_member=${p.post_member}">${p.post_title }
									[${p.post_reply_count}]</a>
							</div>
							<div class="board__cell reg_date">
								<c:choose>
									<c:when test="${p.post_update_date eq null }">
										<fmt:formatDate value="${p.post_reg_date}"
											pattern="yy-MM-dd HH:mm" />
									</c:when>
									<c:otherwise>
										<fmt:formatDate value="${p.post_update_date}"
											pattern="yy-MM-dd HH:mm" />
									</c:otherwise>
								</c:choose>
							</div>
							<div class="board__cell view_count">${p.post_hit_count}</div>
						</div>
					</c:forEach>
				</div>
					<%-- <table>
						<thead>
							<tr>
								<th colspan="1" style="border:1px solid black;">카테고리</th>
								<th colspan="4" style="border:1px solid black;">제목</th>
								<th colspan="2" style="border:1px solid black;">시간</th>
								<th colspan="1" style="border:1px solid black;">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mpt" items="${MyPosts }">
								<tr>
									<td colspan="1" style="text-align: center;">${mpt.post_category }</td>
									<td colspan="4"><a style="cursor: pointer; color: blue;"
										href="myPage.myPost.detail.go?post_id=${mpt.post_id}&post_member=${mpt.post_member}">${mpt.post_title }</a></td>
									<td colspan="2"><fmt:formatDate value="${mpt.post_reg_date }"
											pattern="yyyy-MM-dd HH:mm" /></td>
									<td colspan="1" style="text-align: center;">${mpt.post_hit_count }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> --%>
					<%-- <c:if test="${curPage !=1 and not empty curPage }">
						<a href="mypost.page.change?p=${curPage-1 }" id="snsL">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="1" end="${pageCount }">
						<a href="mypost.page.change?p=${i }"> [${i }] </a>
					</c:forEach>
					<c:if test="${curPage != pageCount }">
						<a href="mypost.page.change?p=${curPage+1 }" id="snsR">&gt;</a>
					</c:if> --%>
				</div>
			</div>
		</div>
</body>
</html>