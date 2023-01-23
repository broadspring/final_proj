<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function() {
		CKEDITOR.replace('editor', {
			filebrowserUploadUrl : 'fileupload.do',
		});
	});
</script>
<script>

// 본문
function deletePost(n) {
	var ok = confirm("복구는 불가능합니다. 정말 삭제하시겠습니까?");
		if (ok) {
			location.href = "post.delete.do?post_id=" + n;
	}
}

// 댓글
function checkReplyReg(f) {
	var txtInput = f.reply_content;

	if (isEmpty(txtInput)) {
		alert("댓글을 입력하세요");
		txtInput.focus();
		return false;
	return true;
}
	
function deleteReply(n) {
	var ok = confirm("?");
	if (ok) {
		location.href = "baseballReply.delete.do?reply_no=" + n;
		}
}

</script>
</head>

<body>
	<main class="boardDetail__main">
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1>야구게시판</h1>
	
	<!--==================== 상세 ====================-->
	<section class="post section">
		<div class="post__container">
			<div class="post__1st-line">
				<div class="post__title">탭:${post.post_category}&nbsp;제목:${post.post_title}</div>
				<div class="post__date">
					<c:choose>
						<c:when test="${post.post_update_date eq null }">
						작성날짜:<fmt:formatDate value="${post.post_reg_date}"
								pattern="yy-MM-dd HH:mm" />
						</c:when>
						<c:otherwise>
						수정날짜:<fmt:formatDate value="${post.post_update_date}"
								pattern="yy-MM-dd HH:mm" />
						</c:otherwise>
					</c:choose>
				</div>
			</div>

			<div class="post__2nd-line">
				<div class="post__element">닉네임:${post.member_nick}</div>
				<div class="post__element">NO.:${post.post_id }&nbsp;조회수:${post.post_hit_count }&nbsp;
					추천수:${post.post_like_count}&nbsp;스크랩수:${post.post_scrap_count}</div>
			</div>

			<div class="post__content">${post.post_content}</div>
		</div>


		<div class="post__bot">
			<button class="post__bot-btn" onclick="history.back()">이전으로</button>
			<c:choose>
				<c:when
					test="${sessionScope.loginAccount.member_id eq post.post_member}">
					<c:choose>
						<c:when test="${sessionScope.loginAccount eq null}">
							<button onclick="alert('로그인하세요')">수정</button>
							<button onclick="alert('로그인하세요')">삭제</button>
						</c:when>
						<c:otherwise>
							<button class="post__bot-btn"
								onclick="location.href='baseball.update.go?post_id=${post.post_id}&post_member=${post.post_member}'">수정</button>
							<button class="post__bot-btn"
								onclick="deletePost(${post.post_id});">삭제</button>
						</c:otherwise>
					</c:choose>
				</c:when>
			</c:choose>
		</div>
	</section>


	<!--==================== 댓글 ====================-->
	<section class="reply section">
		<table class="reply__table">
			<tr>
				<td><c:forEach var="pr" items="${post.replies }">
						<span>${post.member_nick }</span>-&nbsp;${pr.reply_content }&nbsp;
	
							<c:if test="${pr.reply_update_date eq null }">
							<span>(<fmt:formatDate value="${pr.reply_reg_date }"
									type="both" dateStyle="short" timeStyle="short" />)
							</span>
						</c:if>

						<c:if
							test="${pr.reply_member == sessionScope.loginAccount.member_id }">
							<button onclick="updateReply(${pr.reply_id});">수정-ajax처리하기</button>
							<button onclick="deleteReply(${pr.reply_id});">삭제-ajax처리하기</button>
						</c:if>
						<br>
					</c:forEach> <c:if test="${sessionScope.loginAccount != null }">
						<form action="baseballReply.reg.do"
							onsubmit="return checkReplyReg(this);">
							<span> ${sessionScope.loginAccount.member_nick } </span> <input
								type="hidden" name="token" value="${token }"> <input
								type="hidden" name="reply_post" value="${post.post_id}">
							<input type="hidden" name="reply_board" value="21"> <input
								type="hidden" name="pg" value="${curPage }"> <input
								name="reply_content" maxlength="80" autocomplete="off">
							<button>쓰기-ajax처리</button>
						</form>
					</c:if></td>
			</tr>
		</table>
	</section>
	</main>
</body>
</html>