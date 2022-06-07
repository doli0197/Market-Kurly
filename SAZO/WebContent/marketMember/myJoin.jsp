<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<%-- <link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/join.css"/> --%>

<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style2.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style3.css"/>

</head>
<body>

<div class="xans-member-joincomplete">
<div class="joinComplete">
<p class="desc">회원가입이 완료되었습니다.</p>
<div class="memberInfo">
<ul>
<li>
<strong class="bolds" >아이디</strong><span><span >${id }</span></span>
</li>
<li>
<strong class="bolds">이름</strong><span><span>${name }</span></span>
</li>
<li>
<strong class="bolds">이메일</strong><span><span>${email }</span></span>
</li>
</ul>
</div>
<p class="button">
<a href="javascript:moveSignUpEventPage()"><span id="eventButton" class="bhs_button active">신규 혜택 100원 상품 보러가기</span></a>
<a href="/shop/mypage/index.php?&"><span class="bhs_button">마이페이지로 이동</span></a>
</p>
</div>
</div>
<div style="height:100px;"></div>


</body>
</html>