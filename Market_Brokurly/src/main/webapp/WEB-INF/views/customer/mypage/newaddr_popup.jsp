<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로콜리 :: 새 배송지 등록</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/popup.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div class="section_destination">
        <div id="inputForm">
            <div class="modify only_pc">
                <p class="tit_result">
                    <span class="delivery star">샛별배송</span>
                    지역입니다.
                    <span class="desc">매일 아침, 문 앞까지 신선함을 전해드려요.</span>
                </p>
                <div class="field">
                    <div class="address_search">
                        <input type="text" id="address_main" name="address_main" class="" readonly value="${address_main }">
                        <button type="button" class="btn" id="research_btn">
                            <span class="material-icons-sharp ico">
                                search
                            </span>
                            재검색
                        </button>
                    </div>
                    <input type="text" id="address_detail" name="address_detail" placeholder="나머지 주소를 입력해주세요">
                </div>
                <label class="label_default">
                    <input type="checkbox" name="is_default" id="default_chk">
                    <span class="ico"></span>
                    기본 배송지로 저장
                </label>
                <button type="button" class="btn active" id="add_addr_btn">저장</button>
                <div class="no_delivery">
                    <h3 class="tit">
                        <span class="ico">
                            샛별배송 지역 중 배송불가 장소 안내
                        </span>
                        <span class="desc">
                            관공서/학교/병원/시장/공단지역/산간지역/백화점 등
                        </span>
                    </h3>
                    <ul class="list"></ul>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="${path }/resources/js/ajax/destination_ajax.js"></script>
   	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>