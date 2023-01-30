// ==================== 전체글 조회에서 검색 ====================
function boardSearchCheck() {
	var searchInput = document.boardSearchForm.search;

	if (isEmpty(searchInput)) {
		alert("?");
		searchInput.focus();
		return false;
	}
	return true;
}

// ==================== 글 등록 / 업데이트시 내용이 비어있지 않도록 ====================
function checkForm() {
	let titleInput = $('#post_title').val();
	let contentInput = $('#post_content').val();
	let category = $('#post_category').val();

	if (titleInput == '' || titleInput == undefined || titleInput == null
			|| titleInput == 'null') {
		alert("제목을 입력해주세요");
		return false;
	}

	if (contentInput == '' || titleInput == undefined || titleInput == null
			|| titleInput == 'null') {
		alert("내용을 입력해주세요");
		return false;
	}

	if (category == 4) {
		alert("카테고리를 설정해주세요");
		return false;
	}

	return true;
}

function checkForm2() {
	let contentInput = $('#post_content').val();
	let category = $('#post_category').val();

	if (category == 4) {
		alert("카테고리를 설정해주세요");
		return false;
	}

	return true;
}

// ==================== 좋아요 기능 ====================
function likeCheck(a, b, c) {
	let likeCheck = a;
	let like_post = b;
	let like_member = c;

	if (likeCheck > 0) {
		console.log(likeCheck + "좋아요 누름");
		$('#LikeBtn').html("좋아요 취소");
		$('#LikeBtn').click(function() {
			$.ajax({
				type : 'post',
				url : "like.down.do",
				contentType : 'application/json',
				data : JSON.stringify({
					"like_post" : like_post,
					"like_member" : like_member
				}),
				success : function(data) {
					alert('취소 성공');
				}
			})// 아작스 끝
		})

	} else {
		console.log(likeCheck + "좋아요 안누름")
		console.log(like_post);
		console.log(like_member);
		$('#LikeBtn').click(function() {
			$.ajax({
				type : 'post',
				url : "like.up.do",
				contentType : 'application/json',
				data : JSON.stringify({
					"like_post" : like_post,
					"like_member" : like_member
				}),
				success : function(data) {
					alert('성공염');
				}
			})// 아작스 끝

		})
	}
}

// ==================== 글삭제 확인 ====================
function deletePost(n, b) {
	let ok = confirm("복구는 불가능합니다. 정말 삭제하시겠습니까?");
	if (ok) {
		location.href = "fan.delete.do?post_id=" + n + "&post_board=" + b;
	}
}
