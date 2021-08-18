<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/css.css" />
</head>
<body>
	<div id="wrap">
        <div id="header">Kurly</div>
        <div id="nav-bar">
            <ul id="top-cate">
                <li>전체 카테고리</li>
                <li>신상품</li>
                <li>베스트</li>
                <li>알뜰쇼핑</li>
                <li>특가/혜택</li>
            </ul>
            <hr>
        </div>
        <div id="banner"></div>
        <div id="inner-nav-bar">
            <div id="title">채소</div>
            <ul class="list">
                <li><a>전체보기</a></li>
                <!-- 메뉴는 대항목 번호 받아서 출력해주기 -->
                <c:forEach var="i" begin="0" end="${menus.size() - 1 }">
                	<li>${menus.get(i).subcate_name }</li>
                </c:forEach>
            </ul>
        </div>
        <div class="inner-list">
            <ul class="item-list">
            <c:forEach var="i" begin="0" end="${product.size() - 1 }">
                <li>
                    <div class="item" id="productno">
                        <div class="thum" style="background-image: url('${path }/resources/img/product/maincategory${mainNum }/${product.get(i).product_id }.jpg'); background-size: cover">
                           
                        </div>
                        <a class="info">
                            <span>${product.get(i).product_name }</span>
                            <span>${product.get(i).product_price }원</span>
                        </a>
                    </div>
                </li>
            </c:forEach>
            </ul>
        </div>
    </div>
</body>
</html>