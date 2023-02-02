# TRIPPLE : Sports View Community Site
## 📌팀명 : Team Miracle ✨

## 📌소개
스포츠를 관람하기 위해 티켓사이트에서 예매할때 좌석별로 어떤 뷰를 보여주는지 답답했던 경험이 있었습니다.<br>
우연히 https://myseatcheck.com/ 라는 배구경기장 좌석별로 직접 찍은 사진을 보여주는 사이트를 발견하였고, <br>
멋진 아이디어의 사이트라는 팀원 전원의 공감대 속에 '우리는 이를 더 확장해서 구현해보자'는 목표를 설정하였습니다.<br>
<br>
실제로 가서 느낄 현장감을 미리 전달하여 예매에 도움을 주며 이를 매개체로 함께가고 후기를 공유할 공간을 마련하였고<br>
자유로운 소통과 함께 구단의 소식도 쉽게 접할 수 있는 사이트를 구현키로 하였습니다.<br>

핵심 아이디어는 https://myseatcheck.com/ 에서 가져왔음을 다시한번 밝혀두며 오로지 학습용 프로젝트로 제작하였습니다.<br>

## 📌기술스텍
<img src="https://img.shields.io/badge/eclipse-2C2255?style=for-the-badge&logo=eclipse&logoColor=white"> <img src="https://img.shields.io/badge/vs code-0066CC?style=for-the-badge&logo=vscode&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"> <img src="https://img.shields.io/badge/sourcetree-blue?style=for-the-badge&logo=sourcetree&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black"> 


<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=JAVA&logoColor=white"> <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=white"> <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> <img src="https://img.shields.io/badge/html-E34F26?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/ajax-1572B6?style=for-the-badge&logo=ajax&logoColor=white"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/mybatis-black?style=for-the-badge&logo=mybatis&logoColor=white"> <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> 

<img src="https://img.shields.io/badge/figma-black?style=for-the-badge&logo=figma&logoColor=white"> <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"> <img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white">

## 📌담당업무
* 김태형 : 총괄, DB설계, css 구성/정리, 게시판 설계, 
* 임형규 : 회원가입 및 로그인, 소셜API, SIGHT페이지, THE FAN CSS 구체화
* 송준우 : API(지도 및 뉴스), EVENT와 NEWS 페이지, 배경선수 CSS, 회원포인트
* 정권 : 마이페이지 담당, 전체자료수집, 게시판 초안 작성

## 📌페이지별 구현요약
* **Stadium Sight**
  * 우리나라 스포츠 4대리그 남여 각 구장별 4방향의 현장사진 확인 가능<br>
  * 예매하러가기와 구장 위치가 표시된 지도를 추가하여 편의성 도모<br>
* **WithGO / Review**
  * 애니메이션 효과를 통하여 기존 커뮤니티 게시판과는 다른 공간 구현<br>
* **The Fan**
  * 스포츠별 게시판을 나누고 및 각 게시판별 잡담, 질문, 정보 등의 카테고리<br>
  * 커뮤니티 게시판의 기본에 충실한 구성<br>
* **News**
  * 네이버 뉴스 api를 통하여 언론사의 스포츠별 뉴스를 손쉽게 확인<br>
  * 구단 공식 이벤트페이지에선 구단이 광고할수 있는 슬라이드 공간 마련<br>
* **My Page Point**
  * 글을 작성시 포인트 획득 정책을 구성, 마이페이지에서 적립내역과 포인트 확인<br>
* **Social Login**
  * 카카오, 네이버, 구글 로그인 API를 통하여 간편하게 로그인과 회원가입 유도
  
## 📌프로젝트 문서관리
#### Notion : https://dusty-mandible-fdc.notion.site/69a438a4587f48f6b404422ea0fd600f?v=1bb9869d6c9c4e4397129719da3f49bc

## 📌사이트 구조
![SiteMap](https://user-images.githubusercontent.com/109392408/215984046-90c81359-91e8-44b0-b035-d9cd642f1989.png)

## 📌DB구조
### 1. 주요 테이블

### *MEMBER*
COLUMN_NAME|DATA_TYPE|NULLABLE|CONSTRAINT_TYPE|
---|---|---|---|
MEMBER_ID|VARCHAR2(30 CHAR)|No|Primary Key|
MEMBER_PWD|VARCHAR2(200 CHAR)|No||
MEMBER_NICK|VARCHAR2(50 CHAR)|No||
MEMBER_AUTH_TYPE|NUMBER(1,0)|No||
MEMBER_REG_TYPE|NUMBER(1,0)|Yes||
MEMBER_REG_DATE|DATE|No||
MEMBER_REG_IP|VARCHAR2(50 CHAR)|No||
MEMBER_EMAIL|VARCHAR2(100 CHAR)|No||
MEMBER_INTRO|VARCHAR2(200 CHAR)|Yes||
CLUB_ID|NUMBER(5,0)|No|||
MEMBER_SUBS|NUMBER(1,0)|No||
MEMBER_SUBS_BEGIN|DATE|Yes||
MEMBER_SUBS_END|DATE|Yes||
MEMBER_UPDATE_DATE|DATE|Yes||
MEMBER_DATE_WITHDRAWN|DATE|Yes||
MEMBER_ADMIN|NUMBER(1,0)|Yes||

### *POST*

COLUMN_NAME|DATA_TYPE|NULLABLE|DATA_DEFAULT|CONSTRAINT_TYPE|
---|---|---|---|---|
POST_ID|NUMBER(10,0)|No||Primary Key|
POST_BOARD|NUMBER(2,0)|No||Foreign Key|
POST_MEMBER|VARCHAR2(20 CHAR)|No||Foreign Key|
POST_SPORTS|NUMBER(2,0)|Yes||Foreign Key|
POST_LEAGUE|NUMBER(3,0)|Yes||Foreign Key|
POST_CLUB|NUMBER(5,0)|Yes||Foreign Key|
POST_TITLE|VARCHAR2(100 CHAR)|No|||
POST_CATEGORY|NUMBER(1,0)|Yes|0||
POST_REG_DATE|DATE|No|||
POST_UPDATE_DATE|DATE|Yes|||
POST_IMG|VARCHAR2(100 CHAR)|Yes|||
POST_FILE|VARCHAR2(100 CHAR)|Yes|||
POST_HIT_COUNT|NUMBER(10,0)|No|0||
POST_LIKE_COUNT|NUMBER(5,0)|No|0||
POST_SCRAP_COUNT|NUMBER(5,0)|No|0||
POST_REPLY_COUNT|NUMBER(5,0)|No|0||
POST_REG_IP|VARCHAR2(100 CHAR)|No|||
POST_CONTENT|VARCHAR2(2000 BYTE)|Yes|||

### 2. ERD
![ERD](https://user-images.githubusercontent.com/109392408/215984064-c0260cd6-5b84-47e0-9775-e56cd9f16f83.png)


## 📌주요구상 및 설계

### 1. IA DIAGRAM
![IA_Chart](https://user-images.githubusercontent.com/109392408/216013940-7c71cd60-f605-415a-8310-477e479e8537.png)
#### Figma  : https://www.figma.com/file/88oFAYgzGwmQusJZ6qw2zM/TM_Sports_IA-%2B-FLOW-Chart?node-id=0%3A1&t=cN2mjmtqNLmIzvpW-1

### 2. 화면설계(초안)
![view설게_1](https://user-images.githubusercontent.com/97932245/215462904-4746b0c1-bb2c-4b9f-ba35-85ad1080e296.jpg)
![view설게_2](https://user-images.githubusercontent.com/97932245/215463839-533bb48d-78c1-4092-8f1b-4c600d652f92.jpg)

## 📌기능별소개
*(코드는 일부만 기재하였습니다)*
### 1. 팀별 경기장 좌석과 관람사진 
* 구장별 사진은 switch 문으로 값을 세팅<br>
* 사진 좌표값을 설정해서 방향별 사진을 새로운 창에서 뜨도록 설정<br>
```javascript
function baseballSetVal() {
	const url = new URL(location.href);
	const urlParams = url.searchParams;
	let team = urlParams.get("team");
	let reserveBtn = document.querySelector("#reserveBtn");
	let reserveUrl;
	console.log(team);
	switch (team) {
	case "ssg":
		reserveUrl = 'http://www.ssglanders.com/game/ticket';
		lat = 37.436998685442084;
		lon = 126.69327612453377;
		iwContent = '<div style="padding:10px;"> 인천SSG랜더스필드 <br><a href="https://map.kakao.com/link/map/인천 SSG 랜더스필드,37.436998685442084,126.69327612453377" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/인천 SSG 랜더스필드,37.436998685442084,126.69327612453377" style="color:blue" target="_blank">길찾기</a></div>';
		break;
	case "kiwoom":
		reserveUrl = 'https://www.heroesbaseball.co.kr/ticket/normal/viewCharge.do';
		lat = 37.4982338495579;
		lon = 126.867104761712;
		iwContent = '<div style="padding:10px;"> 고척 스카이돔 <br><a href="https://map.kakao.com/link/map/고척 스카이돔,37.4982338495579,126.867104761712" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/고척 스카이돔,37.4982338495579,126.867104761712" style="color:blue" target="_blank">길찾기</a></div>';
		break;
	case "lg":
		reserveUrl = 'https://www.lgtwins.com/service/html.ncd?baRs=OUT_DS&view=%2Fpc_twins%2Fticket%2Fticketbuy&actID=BR_RetrieveTicketing';
		lat = 37.5121513808403;
		lon = 127.071909507224;
		iwContent = '<div style="padding:10px;">서울종합운동장야구장<br><a href="https://map.kakao.com/link/map/서울종합운동장 야구장,37.5121513808403,127.071909507224" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/서울종합운동장 야구장,37.5121513808403,127.071909507224" style="color:blue" target="_blank">길찾기</a></div>';
		break;
		
	// 코드가 길어지는 관계로 3팀으로 줄였습니다.
	
	default:
		break;
	}
	reserveBtn.addEventListener("click", function() {
		window.open(reserveUrl);
	})

}
```

### 2. 카카오맵 API
```javascript
function stadium_map() {
	baseballSetVal();
	soccerSetVal();
	basketballSetVal();
	volleyballSetVal();
	
	var mapContainer = document.getElementById('map'), mapOption = {
		center : new kakao.maps.LatLng(lat, lon),
		level : 3
	};
	var map = new kakao.maps.Map(mapContainer, mapOption);
	var markerPosition = new kakao.maps.LatLng(lat, lon);
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});
	marker.setMap(map);
	iwContent;
	iwPosition = new kakao.maps.LatLng(lat, lon);
	iwRemoveable = true;
	var infowindow = new kakao.maps.InfoWindow({
		position : iwPosition,
		content : iwContent,
		removable : iwRemoveable
	});
	infowindow.open(map, marker);
	kakao.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
}

```
### 3. 회원가입 이메일 인증
```javascript
$(function() {
	$('#member_email_check').click(function() {
		let email = $('#search_member_email').val();
		console.log(email);
		let checkNum = $('#email_num');

		$.ajax({
			url : "member.email.check.do",
			type : "GET",
			dataType : "text",
			data : {
				"member_email" : email
			},
			success : function(data) {
				checkNum.attr('disabled', false);
				$('#valid').val(data);
				alert('인증번호가 전송되었습니다.')
			}
		});
	});
});
```

### 4. 게시글 조회수 및 댓글기능
* 중복조회수가 되지 않도록 설정
```java
	// 조회수
	public void postCountUpdate(HttpServletRequest req, HttpServletResponse res, PostVO p) {

		Cookie[] cookies = req.getCookies();
		int visitor = 0;

		for (Cookie cookie : cookies) {
			System.out.println(cookie.getName());
			if (cookie.getName().equals("visit")) {
				visitor = 1;

				System.out.println("visit 통과");

				if (cookie.getValue().contains(req.getParameter("post_id"))) {
					System.out.println("visitif 통과");
				} else {
					cookie.setValue(cookie.getValue() + "-" + req.getParameter("post_id"));
					res.addCookie(cookie);

					ss.getMapper(BoardMapper.class).postCountUpdate(p);
				}
			}
		}

		if (visitor == 0) {
			Cookie cookie1 = new Cookie("visit", req.getParameter("post_id"));
			res.addCookie(cookie1);

			ss.getMapper(BoardMapper.class).postCountUpdate(p);
		}

		/*
		 * if(ss.getMapper(BoardMapper.class).postCountUpdate(p) == 1) {
		 * req.setAttribute("result", "조회수 성공"); }else { req.setAttribute("result",
		 * "조회수 실패"); }
		 */

	}
```
* 댓글등록 - 새로고침을 하여도 등록되지 않도록 설계 등
```java
	public ResultVO regReply(HttpServletRequest req, ReplyVO rp) {
		String token = req.getParameter("token");
		// 리플등록시에 세션에 세팅해둔 토큰을 불러온다.
		String successToken = (String) req.getSession().getAttribute("successToken");
		System.out.println("token : " + token);
		
		// 리플등록 비동기 요청에 대한 대답으로 새토큰과 등록성공여부, 등록한 리플 정보를 조회해서 받은 ReplyVO를 담아줄 ResultVO 객체를 만든다.
		ResultVO resultVO = new ResultVO();

		// TokenMaker로 만든 토큰과 리플등록시에 만든 토큰을 비교한다.
		if (successToken != null && token.equals(successToken)) {
			resultVO.setResult(0);
			resultVO.setToken(token);
			System.out.println(resultVO.toString());
			return resultVO;
		}
		
		// 리플 등록시에 regIp가 not null이므로 세팅해주자
		String regIp = getClientIp(req);
		System.out.println(regIp);
		rp.setReply_reg_ip(regIp);
		
		// 리플을 등록한 사람도 세팅해주자
		AccountDTO ac = (AccountDTO) req.getSession().getAttribute("loginAccount");
		rp.setReply_member(ac.getMember_id());

		int a = ss.getMapper(BoardMapper.class).regReply(rp);
		System.out.println(a);
		if (a == -1) {
			req.setAttribute("result", "댓글쓰기 성공");
			// 생성토큰을 저장해두기
			req.getSession().setAttribute("successToken", token);
			
			// 성공한 값으로 1을 넘김
			resultVO.setResult(1);
			resultVO.setToken((String) req.getAttribute("token"));
			ReplyVO replyVO = ss.getMapper(BoardMapper.class).getReply();
			System.out.println(replyVO.toString());
			resultVO.setReplyVO(replyVO);
			System.out.println(resultVO.toString());
			return resultVO;
//			allReplyCount++;
		}
		return resultVO;

	}
```

### 5. 화면스크롤 라이브러리
```JSP
<!-- --------------- SCROLLREVEAL CDN --------------- -->
<script src="https://unpkg.com/scrollreveal"></script> 

<script> 
const srFan = ScrollReveal({
	  origin: 'left',
	  distance: '290px',
	  duration: 2400,
	  delay: 200
	  //reset: true, // Animations repeat
	})
	srFan.reveal(`.container-field`);
	srFan.reveal(`.board-main`, { origin: 'left' });
	srFan.reveal(`.app-content`, { origin: 'bottom' });
	srFan.reveal(`.fan_bg-leftTop`, { origin: 'left' });
	srFan.reveal(`.fan_bg-RightTop`, { origin: 'right' });
	srFan.reveal(`.app-container`, { origin: 'top' });
	srFan.reveal(`.`, { interval: 100 });
	</script>
```

## 팀원정보
팀원|이메일|
---|---|
김태형|trainst37@gamil.com|
임형규|frvlv6@gmail.com|
송준우|thdwnsdn98@gmail.com|
정권|jerot94@naver.com|
