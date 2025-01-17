<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Enjoy Sports</title>

<!--=============== [CSS CDN]===============-->

<!-- --------------- FAVICON --------------- -->
<link rel="shortcut icon" href="resources/files/home/favicon.png"
	type="image/x-icon" />

<!-- --------------- REMIXICONS --------------- -->
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet" />

<!--=============== [JS CDN] ===============-->

<!-- --------------- Jquerry --------------- -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<!-- --------------- IMAGESLOADED --------------- -->
<script type="text/javascript"
	src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

<!-- --------------- SCROLLREVEAL --------------- -->
<script src="https://unpkg.com/scrollreveal"></script>

<!--=============== [CSS MEMBER]===============-->
<link rel="stylesheet" href="resources/css/index.css" />
<link rel="stylesheet" href="resources/css/account/account.css" />
<link rel="stylesheet" href="resources/css/community/review/review.css" />
<link rel="stylesheet" href="resources/css/community/community.css" />
<link rel="stylesheet" href="resources/css/news/news.css" />
<link rel="stylesheet" href="resources/css/map/map.css" />
<link rel="stylesheet" href="resources/css/stadium/stadium.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<!--=============== [JS MEMBER]===============-->
<script src="resources/js/account/account_go.js"></script>
<script src="resources/js/account/account_condition.js"></script>
<script src="resources/js/stadium/stadium_go.js"></script>
<script src="resources/js/stadium/seat_detail.js"></script>
<script src="resources/js/community/community_go.js"></script>
<script src="resources/js/myPage/myPage.js"></script>
<script src="resources/js/news/paging.js"></script>
<script src="resources/js/news/paging.js"></script>
<script src="resources/js/board/boardCheck.js"></script>

<script src="//cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="//cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<!-- ---------------------------------------------------------------------------- -->
</head>

<body>
	<!--==================== HEADER ====================-->
	<header class="header" id="header">
		<nav class="nav container">
			<a href="" class="nav__logo"> <img
				src="resources/files/home/logo.png" alt="logo image" /> Enjoy
				Sports
			</a>

			<div class="nav__menu" id="nav-menu">
				<ul class="nav__list">
					<li class="nav__item"><a href=""
						class="nav__link">경기장뷰</a></li>

					<li><a href=""
						class="nav__link">직ㅡ관</a></li>

					<li class="nav__item"><a href=""
						class="nav__link">팬커뮤</a></li>

					<li class="nav__item"><a href=""
						class="nav__link">소식</a></li>

					<li class="nav__item"><a class="nav__link">로그인</a></li>
				</ul>

				<!-- close button -->
				<div class="nav__close" id="nav-close">
					<i class="ri-close-line"></i>
				</div>

				<img src="resources/files/home/leaf-branch-4.png" alt="nav image"
					class="nav__img-1" /> <img
					src="resources/files/home/leaf-branch-3.png" alt="nav image"
					class="nav__img-2" />
			</div>

			<div class="nav__buttons">
				<!-- Theme change button 라이트모드/다크모드-->
				<i class="ri-moon-line change-theme" id="theme-button"></i>

				<!-- Toggle button 폰으로 볼때 위에 내비처럼 생기는거-->
				<div class="nav__toggle" id="nav-toggle">
					<i class="ri-apps-line"></i>
				</div>
			</div>
		</nav>
	</header>

	<div align="center"><jsp:include page="${contentPage }"></jsp:include></div>

	<!--==================== FOOTER ====================-->
	<footer class="footer">
		<div class="footer__container container grid">
			<div>
				<a href="#" class="footer__logo"> <img
					src="resources/files/home/logo.png" alt="logo image" /> Travel
				</a>

				<p class="footer__description">
					모두가 같이 <br /> 만들어가는 <br /> 스포츠 컬쳐
				</p>
			</div>

			<div class="footer__content">
				<div>
					<h3 class="footer__title">Main Menu</h3>
					<ul class="footer__links">
						<li><a href="#" class="footer__link">Stdm</a></li>
						<li><a href="#" class="footer__link">Cmnty</a></li>
						<li><a href="#" class="footer__link">Insider</a></li>
						<li><a href="#" class="footer__link">Games</a></li>
					</ul>
				</div>

				<div>
					<h3 class="footer__title">Information</h3>
					<ul class="footer__links">
						<li><a href="#" class="footer__link">Team Miracle</a></li>
						<li><a href="#" class="footer__link">Videos</a></li>
						<li><a href="#" class="footer__link">Contact</a></li>
					</ul>
				</div>

				<div>
					<h3 class="footer__title">Address</h3>
					<ul class="footer__links">
						<li class="footer__information">서울특별시 미라클시 <br /> 미라클빌딩 777호
						</li>
					</ul>
				</div>

				<div>
					<h3 class="footer__title">Social Media</h3>
					<ul class="footer__social">
						<a href="" target="_blank"
							class="footer__social-link"> <i
							class="ri-facebook-circle-fill"></i>
						</a>
						<a href="" target="_blank"
							class="footer__social-link"> <i class="ri-instagram-fill"></i>
						</a>
						<a href="" target="_blank"
							class="footer__social-link"> <i class="ri-twitter-fill"></i>
						</a>
					</ul>
				</div>
			</div>

			<img src="resources/files/home/spring-onion.png" alt="footer image"
				class="footer__onion" /> <img
				src="resources/files/home/spinach-leaf.png" alt="footer image"
				class="footer__spinach" /> <img
				src="resources/files/home/leaf-branch-4.png" alt="footer image"
				class="footer__leaf" />
		</div>

		<div class="footer__info container">
			<div class="footer__card">
				<img src="resources/files/home/footer-card-1.png" alt="footer image" />
				<img src="resources/files/home/footer-card-2.png" alt="footer image" />
				<img src="resources/files/home/footer-card-3.png" alt="footer image" />
				<img src="resources/files/home/footer-card-4.png" alt="footer image" />
			</div>

			<span class="footer__copy"> &#169; Copyright TeamMiracle. All
				rights reserved </span>
		</div>
	</footer>

	<!--========== SCROLL UP ==========-->
	<a href="#" class="scrollup" id="scroll-up"> <i
		class="ri-arrow-up-line"></i>
	</a>

	<!--=============== MAIN JS ===============-->
	<script src="resources/js/index.js"></script>
</body>
</html>
