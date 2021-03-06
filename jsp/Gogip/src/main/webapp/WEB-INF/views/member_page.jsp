<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

th {
	background-color: #e7e7e7;
}

table {
	border-collapse: collapse;
	width: 100%;
	text-align: center;
	margin-top: 170px;
	margin-bottom: 150px
}

tr {
	border-bottom: 1px solid black;
	font-size: 16px;
}

h3 {
	margin-bottom: 40px;
}

.commu-wrap {
	margin: 0 auto;
	padding: 10px 0 0 0;
	width: 1180px;
}

.commu-content nav ul {
	display: flex;
	flex-direction: row;
	background: rgb(203, 141, 143);

}

.commu-content nav ul li {
	width: 25%;
	text-align: center;
}

nav .member {
	background-color: white;
	padding: 10px 50px 10px 50px;
}

li {
	display: block;
	position: relative;
	line-height: 40px;
	float: left;
	padding: 0 15px;
}

.num {
	width: 10%
}

.title {
	width: 55%
}

.writer {
	width: 20%
}

.date {
	width: 15%
}

.content-title {
	text-align: left;
}

.content-title img {
	width: 12 px;
	height: 12px;
}

.board-bottom {
	width: 1280px;
	text-align: center;
	margin-top: 40px;
	margin-left: 25%;
}

section a {
	color: black;
	font-size: 20px;
}

.title-link {
	display: block;
}
</style>
<script>
	$(function() {
		$("content-title").click(function() {
			location.href = 'post_page.do';
		});
	});
</script>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div class="commu-wrap">
		<h3>관리자 페이지</h3>
		<section class=commu-content>
			<nav id="commu-nav">
				<ul>
					<li><a class="post" href="post_page.do">게시글 관리</a>
					<li><a class="comment" href="comment_page.do">댓글 관리</a>
					<li><a class="member" href="member_page.do">회원 관리</a>
					<li><a class="company" href="company_page.do">업체 관리</a>
					<li><a class="report" href="report_page.do">신고 관리</a>
				</ul>
			</nav>
			<article class="request-body">
				<div class="board-list">
					<table>
						<thead>
							<tr>
								<th class="num">번호</th>
								<th class="title">제목</th>
								<th class="writer">글쓴이</th>
								<th class="date">등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="index" begin="0" end="30">
								<tr class>
									<td class="num"><span>1</span></td>
									<td class="content-title">
										<div class="text-wrap"></div>
										<div>
											<span con-icon board-img photo></span> <a class="title-link"
												href="report_page.do">
										</div> Hello Java! <img src="/img/title_img.png"> </a>
									</td>
									<td class="user"><span class="user">윤혁준</span></td>
									<td class="date">01:27</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="board-bottom">
					<ul id="paging">
						<li><a>이전</a></li>
						<li><a>1</a></li>
						<li><a>2</a></li>
						<li><a>3</a></li>
						<li><a>4</a></li>
						<li><a>5</a></li>
						<li><a>다음</a></li>
					</ul>
				</div>
			</article>
		</section>
		<footer>
			<%@include file="/WEB-INF/views/foot.jsp"%>
		</footer>
	</div>
</body>
</html>