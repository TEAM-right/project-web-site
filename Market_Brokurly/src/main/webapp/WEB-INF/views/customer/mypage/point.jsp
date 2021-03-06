<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="grade" value="${customer_info.customer_grade }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/mypage.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form action="orderlist" id="orderlistForm"></form>
	<form action="destination" id="destinationForm"></form>
	<form action="review" id="reviewForm"></form>
	<form action="inquiry" id="inquiryForm"></form>
	<form action="point" id="pointForm"></form>
	<form action="coupon" id="couponForm"></form>
	<form action="myinfo" id="myinfoForm"></form>
	
	<div class="header">
		<jsp:include page="../../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
        	<div class="top1">
	        	<div id="myPageTop" class="page_article mypage_top">
	                <h2 class="screen_out">마이페이지</h2>
	                <div class="mypagetop_user">
	                    <div class="inner_mypagetop">
	                        <div class="grade_user">
	                            <div class="grade_wrap">
	                                <div class="grade_logo">
	                                	<c:if test="${grade eq 'BROCCOLI' }">브로<br>컬리</c:if>
	                                	<c:if test="${grade eq 'ASPARAGUS' }">아스파<br>라거스</c:if>
	                                	<c:if test="${grade eq 'GREEN' }">그린</c:if>
	                                	<c:if test="${grade eq 'FRIENDS' }">프렌즈</c:if>
	                                	<c:if test="${grade eq 'NORMAL' }">일반</c:if>
	                                	<c:if test="${grade eq 'WELCOME' }">웰컴</c:if>
	                                </div>
	                                <strong class="name">${customer_info.customer_name }님</strong>
	                            </div>
	                            <div class="grade_benefit">
	                                <!---->
	                                <div class="benefit">
	                                    <strong class="tit"></strong>
	                                    적립 
	                                    <c:if test="${grade eq 'BROCCOLI' }">7</c:if>
	                                	<c:if test="${grade eq 'ASPARAGUS' }">7</c:if>
	                                	<c:if test="${grade eq 'GREEN' }">5</c:if>
	                                	<c:if test="${grade eq 'FRIENDS' }">3</c:if>
	                                	<c:if test="${grade eq 'NORMAL' }">1</c:if>
	                                	<c:if test="${grade eq 'WELCOME' }">5</c:if>
	                                    %
	                                </div>
	                                <!---->
	                                <c:if test="${grade eq 'WELCOME' }">
	                                <div class="benefit">
	                                    <strong class="tit"></strong>
	                                    최초 1회 무료배송
	                                </div>
	                                </c:if>
	                                <div class="benefit"></div>
	                            </div>
	                            <div class="next">
	                                <a href="${path }/event/lovers" class="total_grade">전체등급 보기</a>
	                                <a href="${path }/event/mybenefit" class="next_month">다음 달 예상등급 보기</a>
	                            </div>
	                        </div>
	                        <div class="list_mypage">
	                            <div class="list">
	                                <a class="link_wrap" id="point_top">
	                                    <div class="link_title">
	                                        적립금
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">
	                                    	<c:if test="${customer_info.customer_mileage eq null }">
	                                    	0
	                                    	</c:if>
	                                    	<fmt:formatNumber value="${customer_info.customer_mileage }" pattern="#,###,###" /> 원
	                                        <span class="expire">
	                                        소멸 예정 
	                                        <c:if test="${disappear_point eq null }">
	                                        0
	                                        </c:if>
	                                        <c:if test="${disappear_point ne null }">
	                                        ${disappear_point }
	                                        </c:if>
	                                        원
	                                        </span>
	                                    </p>
	                                </a>
	                                <a class="link_wrap" id="coupon_top">
	                                    <div class="link_title">
	                                        쿠폰
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">
	                                    <c:if test="${coupon_count eq null }">0</c:if>
	                                    ${coupon_count } 개
	                                    </p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        컬리 그린 박스
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">알아보기</p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        브로컬리패스
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div> 
	                                    <div class="spacer"></div>
	                                    <p class="info">알아보기</p>
	                                </a>
	                            </div>
	                        </div>
	                    </div>
	                    <a href="${path }/event/friend" class="bnr_event">
	                        <img src="" alt="">
	                    </a>
	                </div>
	            </div>
        	</div>
            <div class="top2">
            	<div class="page_article article_type2">
	                <div id="snb" class="snb_my">
	                    <h2 class="tit_snb">마이브로컬리</h2>
	                    <div class="inner_snb">
	                        <ul class="list_menu">
	                            <li id="orderlist">
	                                <a>주문 내역</a>
	                            </li>
	                            <li id="destination">
	                                <a>배송지 관리</a>
	                            </li>
	                            <li id="review">
	                                <a>상품 후기</a>
	                            </li>
	                            <li id="inquiry">
	                                <a>상품 문의</a>
	                            </li>
	                            <li id="point" class="on">
	                                <a>적립금</a>
	                            </li>
	                            <li id="coupon">
	                                <a>쿠폰</a>
	                            </li>
	                            <li id="myinfo">
	                                <a>개인 정보 수정</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <a href="" class="link_inquire">
	                        <span class="emph">도움이 필요하신가요 ?</span>
	                        1:1 문의하기
	                    </a>
	                </div>
	                <div id="viewOrderList" class="page_section section_point">
	                    <div class="head_article">
	                        <h2 class="tit">
	                            적립금
	                            <span class="tit_sub">보유하고 계신 적립금의 내역을 한 눈에 확인하실 수 있습니다.</span>
	                        </h2>
	                    </div>
                        <div id="">
                            <div class="point_header">
                                <div class="point_view">
                                    <h3 class="tit">현재 적립금</h3>
                                    <strong class="point">
                                    	<c:if test="${customer_info.customer_mileage eq null }">
	                                    0
	                                    </c:if>
                                        <fmt:formatNumber value="${customer_info.customer_mileage }" pattern="#,###,###" />
                                        <span class="won">원</span>
                                    </strong>
                                </div>
                                <span class="disappear">
                                    <span class="subject no_day">
                                        소멸예정 적립금
                                    </span>
                                    <span class="num">
	                                    <c:if test="${disappear_point eq null }">
		                                0
		                                </c:if>
		                                <c:if test="${disappear_point ne null }">
		                                ${disappear_point }
		                                </c:if>
		                                원
                                    </span>
                                </span>
                            </div>
                            <table class="tbl tbl_type1">
                                <caption style="display: none;">적립 사용 내역 상세보기</caption>
                                <colgroup>
                                    <col style="width: 120px;">
                                    <col style="width: auto;">
                                    <col style="width: 122px;">
                                    <col style="width: 140px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>날짜</th>
                                        <th class="info">내용</th>
                                        <th>유효기간</th>
                                        <th>금액</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:if test="${point_history.size() == 0 }">
                                	<!-- 적립금 히스토리가 존재하지 않는 경우 -->
                                    <tr>
                                        <td colspan="4" class="no_data">적립금 내역이 존재하지 않습니다.</td>
                                    </tr>
                                	</c:if>
                                	<c:if test="${point_history.size() != 0 }">
                                		<c:forEach var="i" begin="0" end="${point_history.size() - 1 }">
	                                    <!-- 적립금 히스토리가 존재하는 경우 -->
	                                    <tr>
	                                    	<td>
	                                    		<fmt:formatDate var="saveDate" value="${point_history.get(i).history_date }" pattern="yyyy.MM.dd"/>
	                                    		${saveDate }
	                                    	</td>
	                                    	<td class="info">
	                                    		<span class="link">${point_history.get(i).history_content }</span>
	                                    	</td>
	                                    	<td>
	                                    		<fmt:formatDate var="validityDate" value="${point_history.get(i).history_validity }" pattern="yyyy.MM.dd"/>
	                                    		${validityDate }
	                                    	</td>
	                                    	<c:if test="${point_history.get(i).history_amount < 0 }">
	                                    	<td class="point minus">${point_history.get(i).history_amount }원</td>
	                                    	</c:if>
	                                    	<c:if test="${point_history.get(i).history_amount >= 0 }">
	                                    	<td class="point plus">+${point_history.get(i).history_amount }원</td>
	                                    	</c:if>
	                                    </tr>
                                		</c:forEach>
                                	</c:if>
                                </tbody>
                            </table>
                        </div>
	                </div>
	            </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../../include/footer.jsp"></jsp:include>
	</div>
	
	<script src="${path }/resources/js/style/mypage.js"></script>
	<script src="${path }/resources/js/ajax/mypage_ajax.js"></script>
</body>
</html>