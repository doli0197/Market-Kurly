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
<title>마켓컬리 :: 내일의 장보기,마켓컬리</title>

<%-- <link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/join.css"/> --%>

<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style2.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style3.css"/>



<script type="text/javascript">

function sendIt() {
	
	var f = document.myForm;
	
		if(!f.id.value){
		alert("아이디 입력 하세요")
		f.id.focus();
		return;
		} 
		
		if(!f.pwd.value){
		alert("비밀번호 입력 하세요")
		f.pwd.focus();
		return;
		}
		
		if(f.pwd2.value!=f.pwd.value){
		alert("비밀번호 확인 하세요")
		f.pwd2.focus();
		return; 
		}
		
		if(!f.name.value){
		alert("이름 입력 하세요")
		f.name.focus();
		return;
		}
		
		if(!f.email.value){
			alert("이메일 입력 하세요")
			f.email.focus();
			return;
		}
		
		if (!f.tel.value) {
			alert("전화번호를 입력하세요")
			f.tel.focus();
			return;
			
		}
		
		if(!f.addr1.value){
			alert("주소를 입력해주세요 ex)경기도")
			f.addr1.focus();
			return;
			}
		
		if(!f.addr2.value){
			alert("주소를 입력해주세요 ex)수원시")
			f.addr2.focus();
			return;
			}
		
		if(!f.addr3.value){
			alert("주소를 입력해주세요 ex)조원동")
			f.addr3.focus();
			return;
			}
		
		if(!f.birth.value){
			alert("생년월일을 입력해주세요")
			f.birth.focus();
			return;
			}
		
		if(!f.gender.value){
		alert("성별 입력 하세요")
		f.gender.focus();
		return;
		}
		
		
		f.action = "<%=cp %>/member/join_ok.do";
		f.submit();
	
}

</script>

</head>
<body class="member-join" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">

<!-- 회원가입 글자-->
<div class="tit_page">
<h2 class="tit">회원가입</h2>
</div>
<!-- end 회원가입 글자 -->

<div id="main">
<div id="content">


<!-- 회원가입입력 -->
<form actio.icon="" method="post" name="myForm">
<p class="page_sub"><span class="ico">*</span>필수입력사항</p>
<table class="tbl_comm">

<!-- -----------------------------------------------------------------------------------------------------아이디 입력 -->
<tr class="fst">
<th>아이디<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" name="id" value="" maxlength="16" required fld_esssential option=regId label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">

</td>
</tr>
<!-- -------------------------------------------------------------------------------------------------end 아이디 입력 -->

<!-- --------------------------------------------------------------------------------------------------------비밀번호 -->
<tr>
<th>비밀번호<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="password" name="pwd" required fld_esssential option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">

</td>
</tr>
<!-- -----------------------------------------------------------------------------------------------end 비밀번호 설정 -->

<!-- 비밀번호 확인 -->
<tr class="member_pwd">
<th>비밀번호확인<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="password" name="pwd2" required fld_esssential option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">

</td>
</tr>
<!-- end 비밀번호 확인 -->

<!-- ------------------------------------------------------------------------------------------------------------이름 -->
<tr>
<th>이름<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" name="name" value="" required fld_esssential label="이름" placeholder="이름을 입력해주세요">
</td>
</tr>
<!-- --------------------------------------------------------------------------------------------------------end 이름 -->

<!-- ----------------------------------------------------------------------------------------------------------이메일 -->
<tr>
<th>이메일<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" name="email" value="" data-email="" size=30 required fld_esssential option=regEmail label="이메일" placeholder="예: marketkurly@kurly.com">

<a href="javascript:void(0)" onClick="chkEmail()" class="btn default">중복확인</a>
</td>
</tr>
<!-- ------------------------------------------------------------------------------------------------------end 이메일 -->

<!-- ----------------------------------------------------------------------------------------------------------휴대폰 -->
<tr class="field_phone">
<th>휴대폰<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<div class="phone_num">
<input type="text"  value="" pattern="[0-9]*" name="tel" placeholder="숫자만 입력해주세요" class="inp">

<button id="btn_cert" class="btn default disabled" type="button">인증번호 받기</button>
</div>
<div id="codeNum" class="code_num">
<input type="text" name="auth_code" id="auth_code" value="" size="6" maxlength="6" pattern="[0-9]*" label="인증번호 확인" disabled class="inp_confirm" oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
<button id="btn_cert_confirm" class="btn default disabled" type="button">인증번호 확인</button>
<p id="countdown" class="count_down"></p>
</div>
<p class="txt_guide">
<span class="txt txt_case1"></span>
</p>
</td>
</tr>
<!-- ------------------------------------------------------------------------------------------------------end 휴대폰 -->

<!-- ------------------------------------------------------------------------------------------------------------주소 -->
<tr>
<th>주소<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td class="field_address">
<input type="text" name="addr1" value="" placeholder="ex)경기도"/>
<input type="text" name="addr2" value="" placeholder="ex)수원시"/>
<input type="text" name="addr3" value="" placeholder="ex)상세주소"/>


</td>
</tr>
<!-- --------------------------------------------------------------------------------------------------------end 주소 -->

<!-- --------------------------------------------------------------------------------------------------------생년월일 -->
<tr>
<th>생년월일</th>
<td>
<div class="birth_day">
<input type="text" name="birth" id="birth_month" pattern="[0-9]*" value="" label="생년월일" size=6 maxlength=8 
placeholder="            YYYY            /            MM            /            DD            ">

</div>

</td>
</tr>
<!-- ----------------------------------------------------------------------------------------------------end 생년월일 -->

<!-- ------------------------------------------------------------------------------------------------------------성별 -->
<tr class="select_sex">
<th>성별</th>
<td>
<label class="">
<input type="radio" name="gender" value="남자">
<span class="ico"></span>남자
</label>
<label class="">
<input type="radio" name="gender" value="여자">
<span class="ico"></span>여자
</label>
<label class="checked">
<input type="radio" name="gender" value="null" checked="checked">
<span class="ico"></span>선택안함
</label>
</td>
</tr>
<!-- --------------------------------------------------------------------------------------------------------end 성별 -->



<!-- ------------------------------------------------------------------------------------추천인 아이디, 참여 이벤트명 -->
<tr class="route" id="selectRecommend">
<th>추가입력 사항</th>
<td>
<div class="group_radio">
 <span class="radio_wrapper">
<label for="recommendId">
<input type="radio" name="recommend" id="recommendId" label="추천인아이디">
<span class="ico"></span>추천인 아이디
</label>
</span>
<span class="radio_wrapper">
<label for="eventName">
<input type="radio" name="recommend" id="eventName" label="참여이벤트명">
<span class="ico"></span>참여 이벤트명
</label>
</span>
</div>
<div class="input_wrapper">
<input type="text" name="recommid" value="" class="inp" placeholder="추천인 아이디를 입력해주세요.">
<p class="txt_guide">
추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.
<br>
가입 이후, 수정이 불가합니다.
<br>
대소문자 및 띄어쓰기에 유의해주세요.
</p>
</div>
</td>
</tr>
<!-- --------------------------------------------------------------------------------end 추천인 아이디, 참여 이벤트명 -->

<!-- ----------------------------------------------------------------------------------------------------이용약관동의 -->
<tr class="reg_agree">
<th>이용약관동의 <span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<div class="bg_dim"></div>
<div class="check">
<label class="check_agree label_all_check label_block">
<input type=checkbox name="agree_allcheck">
<span class="ico"></span>전체 동의합니다.
</label>
<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
</div>
<div class="check_view">
<label class="check_agree label_block">
<input type="checkbox" value="" name="agree" required label="이용약관">
<span class="ico"></span>이용약관 동의 <span class="sub">(필수)</span>
</label>
<a href="#none" class="link btn_link btn_agreement">약관보기 </a>
</div>


<div class="layer layer_agreement">
<div class="inner_layer">
<h4 class="tit_layer">이용약관 <span class="sub">(필수)</span></h4>
<div class="box_tbl" id="serviceView"></div>
<script>
                var serviceView = new Vue({
                  el: '#serviceView',
                  data: {
                    pageUrl : campaginUrl + 'pc/service/agreement.html',
                    storagetObj : null,
                    eventStart : false, // 딱 한번만실행
                  },
                  methods: {
                    update:function(){
                      var $self = this;
                      $.ajax({
                        url : $self.pageUrl
                      }).done(function(result){
                        $('#serviceView').html(result);
                        $self.storagetObj = JSON.parse(sessionStorage.getItem("agreement"));
                        if(!$self.eventStart){
                          $self.eventStart = true;
                          $self.pageUrl = campaginUrl + 'pc/service/' + $self.storagetObj[$self.storagetObj.length-1].name + '.html'
                          $self.update();
                        }
                      });
                    }
                  }
                });
                serviceView.update();
              </script>
<button type="button" class="btn_ok">확인</button>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div>
</div>

<div class="check_view">
<label class="check_agree label_block">
<input type="checkbox" id="private1" name="private1" value="" required label="개인정보 수집·이용">
<span class="ico"></span>개인정보 수집·이용 동의 <span class="sub">(필수)</span>
</label>
<a href="#none" class="link btn_link btn_essential">약관보기 </a>
</div>

<div class="layer layer_essential">
<div class="inner_layer">
<div class="in_layer">
<h4 class="tit_layer">개인정보 수집·이용 동의 <span class="sub">(필수)</span></h4>
<div class="box_tbl">
<table cellpadding="0" cellspacing="0" width="100%">
<caption class="screen_out">개인정보 수집·이용 동의 (필수)</caption>
<thead>
<tr>
<th scope="row" class="tit1">수집 목적</th>
<th scope="row" class="tit2">수집 항목</th>
<th scope="row" class="tit3">보유 기간</th>
</tr>
</thead>
<tbody>
<tr>
<td>이용자 식별 및 본인여부</td>
<td rowspan="4">이름, 아이디, 비밀번호, 휴대폰번호, 이메일, 주소</td>
<td rowspan="4" class="emph">회원 탈퇴 <br>즉시 파기 <br><br>부정이용 방지를 위하여 30일 동안 보관 (아이디, 휴대폰 번호) 후 파기 </td>
</tr>
<tr>
<td>거점 기반 서비스 제공</td>
</tr>
<tr>
<td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 처리</td>
</tr>
<tr>
<td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td>
</tr>
<tr>
<td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
<td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자, OS/ 앱 버전)</td>
<td class="emph">회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
</tr>
</tbody>
</table>
</div>
<p class="txt_service">서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.</p>
</div>
<button type="button" class="btn_ok"><span class="txt_type">확인</span></button>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div>

<div class="check_view">
<input type="hidden" id="consentHidden" name="consent[1]" value="">
<label class=" check_agree label_block">
<input type="checkbox" name="hiddenCheck">
<span class="ico"></span>개인정보 수집·이용 동의 <span class="sub">(선택)</span>
</label>
<a href="#none" class="link btn_link btn_choice">약관보기 </a>
</div>

<div class="layer layer_choice">
<div class="inner_layer">
<div class="in_layer">
<h4 class="tit_layer">개인정보 수집·이용 동의 <span class="sub">(선택)</span></h4>
<div class="box_tbl">
<table cellpadding="0" cellspacing="0" width="100%">
<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
<thead>
<tr>
<th scope="row" class="tit1">수집 목적</th>
<th scope="row" class="tit2">수집 항목</th>
<th scope="row" class="tit3">보유 기간</th>
</tr>
</thead>
<tbody>
<tr>
<td>맞춤형 회원 서비스 제공</td>
<td>성별, 생년월일</td>
<td class="emph">회원 탈퇴<br> 즉시 파기</td>
</tr>
</tbody>
</table>
</div>
<p class="txt_service">동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
</div>
<button type="button" class="btn_ok"><span class="txt_type">확인</span></button>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div>
</div>

<div class="check_view">
<label class="label_block check_agree ">
<input type="checkbox" name="marketing">
<span class="ico"></span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span class="sub">(선택)</span>
</label>

<div class="check_event email_sms">
<label class="label_block check_agree ">
<input type="checkbox" name="sms" value="n">
<span class="ico"></span>SMS
</label>

<label class="label_block check_agree ">
<input type="checkbox" name="mailling" value="n">
<span class="ico"></span>이메일
</label>
</div>

<p class="sms_info">
동의 시 한 달간 [5% 적립] + [무제한 무료배송] <span class="sub">(첫 주문 후 적용)</span>
</p>
</div>
<div class="check_view">
<label class=" check_agree label_block">
<input type="checkbox" value="n" name="fourteen_chk" required label="만 14세 이상">
<span class="ico"></span>본인은 만 14세 이상입니다. <span class="sub">(필수)</span>
</label>
</div>
</td>
</tr>
<!-- ---------------------------------------------------------------------------------------------------end 이용약관  -->



</table>
<%-- <input type="hidden" name="id" value="${dto.id }"/> --%>

<!-- ---------------------------------------------------------------------------------------------------가입하기 버튼 -->
<div id="formSubmit" class="form_footer">
<button type="button" class="btn active btn_join" 
onclick="sendIt();">가입하기</button>
<%-- '<%=cp %>/member/join.do_ok';" --%>
</div>
<!-- ----------------------------------------------------------------------------------------------end 가입하기 버튼  -->

</form>




<!-- end 회원가입입력 -->



</body>
</html>