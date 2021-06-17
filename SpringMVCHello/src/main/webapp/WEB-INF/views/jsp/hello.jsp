<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="title" content="운영관리시스템">
<meta name="keywords" content="운영관리, 유지보수, 서비스게시판, 시스템, 한신정보기술">
<meta name="description" content="(주)한신정보기술 운영관리시스템">
<meta name="format-detection" content="telephone=no">
<%-- <link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />">
<link rel="icon" href="<c:url value="/resources/images/favicon.ico" />">
<link rel="apple-touch-icon" sizes="180x180"
	href="<c:url value="/resources/images/app_ico.png" />"> --%>
<link rel="stylesheet" href="<c:url value="/resources/css/fonts.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/default.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/service.css" />">

<title>운영관리시스템 - (주)한신정보기술</title>
</head>
<body>
	<div class="accessibility">
		<a href="#container">본문 바로가기</a>
	</div>

	<header class="header">
	<div class="header__wrap">
		<a href="" class="header__logo">
			<h1 class="header__logo-text">
				<span>운영관리시스템</span>
			</h1>
		</a>
		<div class="gnb">
			<div class="p-dropdown gnb__item">
				<button type="button" class="gnb__button cog" data-button="dropdown"
					data-arrow="true">
					<span class="skip">알림설정</span>
				</button>
				<div class="p-dropdown__body notice">
					<form action="">
						<legend>알림허용 설정</legend>
						<div class="notice__body">
							<div class="notice__check-wrap">
								<div class="row">
									<div class="col notice__title">알림허용</div>
									<div class="col text-right">
										<span class="p-switcher"> <input id="noticeAll"
											type="checkbox" class="p-switcher__input" checked> <label
											for="noticeAll" class="p-switcher__label"><em
												class="skip">알림 허용</em></label>
										</span>
									</div>
								</div>
								<div class="notice__list">
									<span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z1" class="p-form-checkbox__input"
										checked> <label for="z1"
										class="p-form-checkbox__label">신청</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z2" class="p-form-checkbox__input"
										checked> <label for="z2"
										class="p-form-checkbox__label">신청확인</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z3" class="p-form-checkbox__input"
										checked> <label for="z3"
										class="p-form-checkbox__label">처리중</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeLista" id="z4" class="p-form-checkbox__input">
										<label for="z4" class="p-form-checkbox__label">완료</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z5" class="p-form-checkbox__input">
										<label for="z5" class="p-form-checkbox__label">보류</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z6" class="p-form-checkbox__input">
										<label for="z6" class="p-form-checkbox__label">취소</label>
									</span> <span class="p-form-checkbox"> <input type="checkbox"
										name="noticeList" id="z7" class="p-form-checkbox__input">
										<label for="z7" class="p-form-checkbox__label">댓글 등록</label>
									</span>
								</div>
							</div>

							<div class="row disturb">
								<div class="col notice__title">방해금지</div>
								<div class="col text-right">
									<span class="p-switcher"> <input id="checkDisturb"
										type="checkbox" class="p-switcher__input"> <label
										for="checkDisturb" class="p-switcher__label"><em
											class="skip">방해금지</em></label>
									</span>
								</div>
							</div>
							<div class="disturb__text">방해금지시간 : 오후6시 ~ 익일9시</div>
						</div>

						<div class="notice__footer">
							<a href="" class="p-button p-button--small">적용</a>
						</div>
					</form>
				</div>
			</div>

			<div class="p-dropdown gnb__item">
				<button type="button" class="gnb__button user"
					data-button="dropdown" data-arrow="true">
					<span class="skip">마이메뉴</span>
				</button>
				<div class="p-dropdown__body">
					<div class="user__basic">
						<span class="department">청주시청</span> <span class="name"><strong>홍길동</strong>
							과장</span>
					</div>
					<ul class="user__list">
						<li><a href="" class="user__link site">사이트 관리자 설정</a></li>
						<li><a href="" class="user__link info">정보수정</a></li>
						<li><a href="" class="user__link password">비밀번호 변경</a></li>
						<li><a href="" class="user__link logout">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="project">
		<div class="project__subject">2019년 청주시 대표 홈페이지 유지관리 용역 2019년
			청주시 대표 홈페이지 유지관리 용역</div>
		<span class="project__date">2019-01-01 ~ 2019-12-31</span>
	</div>
	</header>


	<main class="container"> <section class="client-side">
	<button type="button" class="side__button open"
		onclick="setToggled('client-side');">
		<span class="side__button-text">접수현황 및 작업자 열기</span>
	</button>
	<div class="client-side__wrap">
		<h2 class="client-side__project">2019년 청주시 대표 홈페이지 유지관리 용역</h2>
		<section class="side-status">
		<h3 class="side__title">접수 및 작업 현황</h3>
		<ul class="side-status__list">
			<li class="side-status__item active">
				<!-- 신청 step1, 검토중 step2, 신청확인 step3, 처리중 step4, 보류 hold, 처리완료 complate, 취소 cancel -->
				<!-- 목록 필터링 항목 active--> <a href="" class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						전체 <strong>2,136</strong>건
					</div>
			</a>
			</li>
			<li class="side-status__item step1"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						신청 <strong>36</strong>건
					</div>
			</a></li>
			<li class="side-status__item step2"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						검토중 <strong>0</strong>건
					</div>
			</a></li>
			<li class="side-status__item step3"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						신청확인 <strong>3</strong>건
					</div>
			</a></li>
			<li class="side-status__item step4"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						처리중 <strong>36</strong>건
					</div>
			</a></li>
			<li class="side-status__item hold"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						보류 <strong>36</strong>건
					</div>
			</a></li>
			<li class="side-status__item cancel"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						취소 <strong>36</strong>건
					</div>
			</a></li>
			<li class="side-status__item complete"><a href=""
				class="side-status__link">
					<div class="status__icon"></div>
					<div class="status__text">
						완료 <strong>1,234</strong>건
					</div>
			</a></li>
		</ul>
		</section>
		<section class="side-workers">
		<h3 class="side__title">전담 작업자</h3>
		<ul class="side-workers__list">
			<li class="side-workers__item">운영관리 : <a
				href="tel:070-1234-1234">홍길동 과장 (☎ 070-1234-1234)</a></li>
			<li class="side-workers__item">개발관리 : <a
				href="tel:070-1234-1234">홍길동 과장 (☎ 070-1234-1234)</a></li>
			<li class="side-workers__item">사업관리 : <a
				href="tel:070-1234-1234">홍길동 과장 (☎ 070-1234-1234)</a></li>
			<li class="side-workers__item">영업관리 : <a
				href="tel:070-1234-1234">홍길동 과장 (☎ 070-1234-1234)</a></li>
		</ul>
		</section>
	</div>
	<button type="button" class="side__button close"
		onclick="setToggled('client-side');">
		<span class="side__button-text">접수현황 및 작업자 닫기</span>
	</button>
	</section>

	<div class="contents">
		<section class="list">
		<h2 class="skip">접수 목록</h2>
		<div class="row table-header">
			<div class="col table-header__count">1,432건 [ 1/96 페이지 ]</div>
			<div class="col col-sm-auto table-header__search">
				<form:form modelAttribute="searchVO" id="listForm" name="listForm"  action="search" method="post">
					<div class="p-form-group">
						<label for="" class="skip">form제목, 내용 입력</label>
						<form:select path="searchCondition" cssClass="use">
							<form:option value="0" label="Status" />
							<form:option value="1" label="Title" />
							<form:option value="2" label="Applicant" />
						</form:select>
						<form:input path="searchKeyword" cssClass="p-input p-input--small"
							placeholder="se제목, 내용 검색" />
						<!-- <input type="text" name="" id="" class="p-input p-input--small" value=""
							placeholder="se제목, 내용 검색"> <span class="p-input__addon"> -->
						<button type="submit" class="p-button search">검색</button>
						<!-- </span> -->
					</div>
				</form:form>
			</div>
		</div>
		


		<table class="p-table table-sticky p-table--service">
			<!--   data-table="rwd" data-breakpoint="1000" -->
			<caption>서비스접수 목록으로 번호, 처리상태, 기관명, 신청구분, 제목, 첨부 신청자, 작업자,
				신청일 안내</caption>
			<colgroup>
				<col style="width: 80px">
				<col style="width: 90px">
				<col style="width: 150px">
				<col>
				<col style="width: 70px">
				<col style="width: 110px">
				<col style="width: 110px">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">1번호</th>
					<th scope="col">
						<div class="p-sort">
							2처리상태 <span class="p-sort__link-group"> <a href=""
								class="p-sort__link asc">오름차순</a> <!--선택된 정렬에 className active 추가-->
								<a href="" class="p-sort__link desc">내림차순</a>
							</span>
						</div>
					</th>
					<th scope="col">3신청구분</th>
					<th scope="col">4제목</th>
					<th scope="col">5첨부</th>
					<th scope="col">6신청자</th>
					<th scope="col">7신청일</th>
				</tr>
			</thead>
			<tbody class="text-center">
				<c:forEach var="result" items="${resultList}" varStatus="status">
					<tr>
						<td class="p-service__number"><span><c:out
									value="${result.id}" /></span></td>
						<td class="p-service__status"><span class="p-status step1"><c:out
									value="${result.status}" /></span></td>
						<!-- type1: 신청, type2 : 검토, type3: 신청확인, type4:처리중, complete: 완료, hold: 보류, cancel : 취소   -->
						<td class="p-service__type"><c:out value="${result.category}" /></td>
						<td class="p-service__subject text-left"><a href=""
							class="p-table__subject"> <span class="p-table__subject-text"><c:out
										value="${result.title}" /></span> <span class="p-icon p-icon__new">새글</span>
								<span class="p-icon p-icon__comment">댓글:<span>6</span></span>
								<button type="button" class="p-icon p-icon__clock"
									title="완료예정 : 2020-11-20" data-button="tooltip">완료예정</button>
						</a></td>
						<td class="p-service__file"><span class="p-file xlsx"><span><c:out
										value="${result.attachment}" /></span></span></td>
						<td class="p-service__name"><button type="button"
								data-button="popover"
								data-content="기획전략실 전산팀 <br> 043-1234-1234">
								<c:out value="${result.applicant}" />
							</button></td>
						<td class="p-service__date"><c:out value="${result.app_date}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="p-pagination-wrap  p-sticky p-sticky--bottom">
			<div class="left">
				<a href="" class="p-button p-button--combine excel"><span
					class="skip">엑셀</span> 다운로드</a>
			</div>
			<div class="center">
				<div class="p-pagination">
					<div class="p-page">
						<span class="p-page__control"> <a href="#"
							class="p-page__link prev-end"><span class="skip">처음
									페이지</span></a> <a href="#" class="p-page__link prev"><span
								class="skip">이전 10 페이지</span></a> <a href="#"
							class="p-page__link prev-one">이전 페이지</a>
						</span> <span class="p-page__link-group"> <strong title="현재 1페이지"
							class="p-page__link">1</strong> <a href="" title="2페이지 이동"
							class="p-page__link active">2</a> <a href="" title="3페이지 이동"
							class="p-page__link">3</a> <a href="" title="4페이지 이동"
							class="p-page__link">4</a> <a href="" title="5페이지 이동"
							class="p-page__link">5</a> <a href="" title="6페이지 이동"
							class="p-page__link">6</a> <a href="" title="7페이지 이동"
							class="p-page__link">7</a> <a href="" title="8페이지 이동"
							class="p-page__link">8</a> <a href="" title="9페이지 이동"
							class="p-page__link">9</a> <a href="" title="10페이지 이동"
							class="p-page__link">110</a>
						</span> <span class="p-page__control"> <a href="#"
							class="p-page__link next-one">다음 페이지</a> <a href="#"
							class="p-page__link next"><span class="skip">다음 10 페이지</span></a>
							<a href="#" class="p-page__link next-end"><span class="skip">끝
									페이지</span></a>
						</span>
					</div>
				</div>

			</div>
			<div class="right">
				<a href="" class="p-button primary">글 등록</a>
			</div>
		</div>
		</section>
	</div>
	<!-- //contents --> </main>

	<!-- 계약 만료 공지 tempalte -->
	<script id="clientNotice" type="text/template">
    <div class="alert">
        <div class="client-notice">
            <span  class="margin-r-5">하자보수 및 운영관리 기간이  <em style="color:#ed5565">35일( 2019-12-12 )</em> 이후 종료됩니다.</span>
            <span>문의 : 영업팀 <strong style="color:#333;">홍길동 차장</strong> ( 070-1234-1234 )</span>
        </div>
    </div>
</script>
	<footer class="footer">
	<address class="skip">충북 청주시 상당구 수암로37 / 대표전화 : 043-278-2700
		/ 팩스 : 043-278-2800</address>
	<p>Copyright ⓒ 2020 HanshinIT. All RIGHTS RESERVED</p>
	</footer>
	<!-- //footer -->

	<script src="<c:url value="/resources/js/jquery-3.5.1.min.js"/> "></script>
	<script src="<c:url value="/resources/js/program.js"/> "></script>
	<script src="<c:url value="/resources/js/service.js"/> "></script>

	<!-- //container -->
	<script>
		$(function() {
			var contentHTML = document.querySelector("#clientNotice").innerHTML;
			Alert({
				type : "warning",
				container : '.container',
				addClass : 'client-notice',
				html : contentHTML,
				timer : 0,
				focus : false
			});
		});
	</script>
</body>
</html>