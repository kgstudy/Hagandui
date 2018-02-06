<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="slide_section">
	<div class="slide_wrap">
		<c:forEach var="t" begin="1" end="3">
			<div class="slide" id="slide${t }" style="background-image: url('/img/main/slide0${t }.png'); background-position: center center; ">
				<div class="slide_txt_wrap">
					<div class="place_txt_wrap">
						<div class="title">제주</div>
						<div class="dots"></div>
						<div class="airplane"></div>
					</div>
					<div class="title_txt_wrap">
						<div class="title">제주 바다를 누비다</div>
						<div class="sub_title">스킨스쿠버 체험 다이빙<br>&amp;자격증코스까지!</div>
						<div class="txt">
							제주는 수온이 따뜻해 1년 내내 스킨스쿠버 체험이 가능하답니다.<br>
							세계 어느나라에도 결코 뒤지지 않는 화려한 수중 경관을 만나보세요.
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="arrow_wrap">
			<div class="arrow left">
				<img src="/img/main/arrow_left.png"/>
			</div>
			<div class="arrow right">
				<img src="/img/main/arrow_right.png"/>
			</div>
		</div>
	</div>
</section>
<section class="item_section">
	<div class="search_wrap">
		<input type="text" placeholder="제주 스킨스쿠버 체험"/>
		<div class="search_btn">검색</div>
	</div>
	<div class="top_wrap">
		<div class="txt">
			<img src="/img/main/dot.png"/>&nbsp;인기여행지
		</div>
		<div class="item_wrap">
			<div class="item_slide">
				<c:forEach var="t" begin="1" end="8">
					<div class="item" id="item${t }" onmouseenter="itemIn(${t })" onmouseleave="itemOut(${t })">
						<img class="item_img" src="/img/main/item${t }.png"/>
						<img class="num_img" src="/img/main/item_num.png"/>
						<div class="num">${t }</div>
						<div class="txt_wrap" id="itemTxt${t }">
							<div class="item_txt place" id="itemPlace${t }">강원도/대관령</div>
							<div class="item_txt title" id="itemTitle${t }">양떼목장</div>
							<div class="item_txt explain" id="itemExplain${t }">양먹이주기 양젖짜기 양털밀기 등</div>
						</div>
						<div class="rev_btn" id="revBtn${t }">예약하기</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="banner_wrap">
			<div class="banner">
				<img src="/img/main/event_banner.png"/>
			</div>
			<div class="banner">
				<img src="/img/main/faq_banner.png"/>
			</div>
		</div>
	</div>
</section>
<section class="board_section">
	<div class="board_wrap">
		<div class="txt">
			<img src="/img/main/dot.png"/>&nbsp;공지사항
			<div class="more">+더보기</div>
		</div>
		<div class="list_wrap">
			<c:forEach var="t" begin="1" end="10">
				<div class="list">
					<div class="list_txt">${11-t }</div>
					<div class="list_txt list_txt4"><span>hagandui가 새롭게 오픈했습니다!!</span></div>
					<div class="list_txt list_txt2">2017-11-14</div>
					<div class="list_txt list_txt2">관리자</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="board_wrap">
		<div class="txt">
			<img src="/img/main/dot.png"/>&nbsp;최근후기
			<div class="more">+더보기</div>
		</div>
		<div class="list_wrap">
			<c:forEach var="t" begin="1" end="10">
				<div class="list">
					<div class="list_txt">${11-t }</div>
					<div class="list_txt list_txt2">해녀체험</div>
					<div class="list_txt list_txt3"><span>정말 재밌는거같아요...</span></div>
					<div class="list_txt list_txt2">2017-11-14</div>
					<div class="list_txt list_txt2">jejusonyo</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>