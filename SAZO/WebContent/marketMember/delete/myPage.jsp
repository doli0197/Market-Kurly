<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="euc-kr" />
<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta name="description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url" content="https://www.kurly.com/shop/mypage/mypage_orderlist.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style2.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/style3.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/common.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/join.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/normalize.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/marketMember/css/section1.css"/>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<meta name="facebook-domain-verification" content="tyur3wmoos7t63tpkb7zosur6p98m1" />

<script src="https://js.sentry-cdn.com/c1f07ee4a3fd45d5aa2ef4983ca9ad43.min.js" crossorigin="anonymous"></script>
<script>
  var environment = 'production';

  Sentry.onLoad(function() {
    Sentry.init({
      environment: environment,
      denyUrls: [
        /localhost/i,
        /dev\.kurly\.com/i
      ],
      traceSampler: function(samplingContext) {
        if (
					samplingContext.location.pathname === '/shop/mypage/mypage_coupon.php'
				) {
					return 1;
				} else {
	        return 0.01;
				}
      },
    });
  });
</script>

<script src="/asset/js/common.bundle.js?ver=1.65.2"></script>
<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>
<link rel="shortcut icon" href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png" type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57" href="https://res.kurly.com/images/marketkurly/logo/ico_57.png">
<link rel="apple-touch-icon" sizes="60x60" href="https://res.kurly.com/images/marketkurly/logo/ico_60.png">
<link rel="apple-touch-icon" sizes="72x72" href="https://res.kurly.com/images/marketkurly/logo/ico_72.png">
<link rel="apple-touch-icon" sizes="76x76" href="https://res.kurly.com/images/marketkurly/logo/ico_76.png">
<link rel="apple-touch-icon" sizes="114x114" href="https://res.kurly.com/images/marketkurly/logo/ico_114.png">
<link rel="apple-touch-icon" sizes="120x120" href="https://res.kurly.com/images/marketkurly/logo/ico_120.png">
<link rel="apple-touch-icon" sizes="144x144" href="https://res.kurly.com/images/marketkurly/logo/ico_144.png">
<link rel="apple-touch-icon" sizes="152x152" href="https://res.kurly.com/images/marketkurly/logo/ico_152.png">
<link rel="apple-touch-icon" sizes="180x180" href="https://res.kurly.com/images/marketkurly/logo/ico_180.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://res.kurly.com/images/marketkurly/logo/ico_32.png">
<link rel="icon" type="image/png" sizes="192x192" href="https://res.kurly.com/images/marketkurly/logo/ico_192.png">
<link rel="icon" type="image/png" sizes="16x16" href="https://res.kurly.com/images/marketkurly/logo/ico_16.png">
<script>
sessionStorage.setItem('user_no', '25121937')
sessionStorage.setItem('apiDomainV2', '')

var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiNTQ2OWVlMmEtZTA3ZS00N2Q2LThlNjktNjk0NGM2OTY3YjhhIiwiaXNfZ3Vlc3QiOmZhbHNlLCJ1dWlkIjoiZjYwZjU2YmMtMWNjZS01MzYxLTg0N2QtZDk3MjkwN2Q2MDMyIiwibV9ubyI6MjUxMjE5MzcsIm1faWQiOiJ0a2RkbmpzMDE5NyIsImxldmVsIjoyMCwic3ViIjoiZjYwZjU2YmMtMWNjZS01MzYxLTg0N2QtZDk3MjkwN2Q2MDMyIiwiaXNzIjoiaHR0cDovL21rd2ViLmFwaS5rdXJseS5zZXJ2aWNlcy92My9hdXRoL2xvZ2luIiwiaWF0IjoxNjQ2MTA0NjA4LCJleHAiOjE2NDYxMDgyMDgsIm5iZiI6MTY0NjEwNDYwOCwianRpIjoiUXRnZ3F4TEFXR0tPY0QydyJ9.dMSTO2Af49oq5gIOdxJRTVdS2t_H1YgaEY2wVb9eyf4';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('1');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>
<script src="/shop/data/skin/designgj/thefarmers.js?ver=1.65.2"></script>
<script src="/shop/data/skin/designgj/common.js?ver=1.65.2"></script>
<script src="/shop/data/skin/designgj/polify.js?ver=1.65.2"></script>
<script src="/shop/data/skin/designgj/ui_v2.js?ver=1.65.2"></script>

<script src="//res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain?ver=1"></script>

<script src="//res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="//res.kurly.com/js/vue/es6-promise.auto.min.js"></script>

<script type="text/javascript" src="//res.kurly.com/js/vue/axios.min.js"></script>


<script src="//res.kurly.com/js/vue/vue.min.js"></script>
<script src="/common_js/axios.js?ver=1.65.2"></script>
<link rel="styleSheet" href="/shop/data/skin/designgj/normalize.css?ver=1.65.2">
<link rel="styleSheet" href="/shop/data/skin/designgj/section1.css?ver=1.65.2">
<link rel="styleSheet" href="/shop/data/skin/designgj/common.css?ver=1.65.2">

<script async src="https://www.googletagmanager.com/gtag/js?id=G-2K2GN0FFY0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-2K2GN0FFY0', {
    'user_id' : '5469ee2a-e07e-47d6-8e69-6944c6967b8a'
  });
</script>

<style>.async-hide { opacity: 0 !important} </style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
</script>

<script src="https://www.googleoptimize.com/optimize.js?id=OPT-P8X2HNB"></script>
<script src="https://www.googleoptimize.com/optimize.js?id=GTM-MRW9DRV"></script>

<script>
var uuidCheck = "f60f56bc-1cce-5361-847d-d972907d6032";
var cookie_uuid = null;

function setCookieGa(cookieName, value){
	var exdays = 365;
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue +"; path=/;"
}

function getCookieGa(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookieGa(cookieName){
	var expireDate = new Date();
	//어제 날짜를 쿠키 소멸 날짜로 설정한다.
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/* 로그인 */
if(uuidCheck !== "") {
	if( !getCookieGa('ga_uuid') ){
		setCookieGa('ga_uuid', uuidCheck);
	}else{
		if( getCookieGa('ga_uuid') !== uuidCheck){
			deleteCookieGa('ga_uuid');
			setCookieGa('ga_uuid', uuidCheck); /* 로그인 사용자쿠키 추가 */
		}
	}
	ga('set', 'userId', uuidCheck);
	ga('send', 'pageview',{'dimension1':  uuidCheck});
}else{
	ga('send', 'pageview');
}

//edge browser correspondence
var disableSelection = true;
$(function(){
    $('input, textarea').on('focus', function(){
        disableSelection = false;
    }).on('blur', function(){
        disableSelection = true;
    });
});
</script>
<script>
(function(e,t){var n=e.amplitude||{_q:[],_iq:{}};var r=t.createElement("script")
;r.type="text/javascript"
;r.integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
;r.crossOrigin="anonymous";r.async=true
;r.src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"
;r.onload=function(){if(!e.amplitude.runQueuedFunctions){
	console.log("[Amplitude] Error: could not load SDK")}}
;var i=t.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)
;function s(e,t){e.prototype[t]=function(){
	this._q.push([t].concat(Array.prototype.slice.call(arguments,0)));return this}}
	var o=function(){this._q=[];return this}
	;var a=["add","append","clearAll","prepend","set","setOnce","unset"]
	;for(var u=0;u<a.length;u++){s(o,a[u])}n.Identify=o;var c=function(){this._q=[]
			;return this}
	;var l=["setProductId","setQuantity","setPrice","setRevenueType","setEventProperties"]
	;for(var p=0;p<l.length;p++){s(c,l[p])}n.Revenue=c
	;var d=["init","logEvent","logRevenue","setUserId","setUserProperties","setOptOut","setVersionName","setDomain","setDeviceId", "enableTracking", "setGlobalUserProperties","identify","clearUserProperties","setGroup","logRevenueV2","regenerateDeviceId","groupIdentify","onInit","logEventWithTimestamp","logEventWithGroups","setSessionId","resetSessionId"]
	;function v(e){function t(t){e[t]=function(){
		e._q.push([t].concat(Array.prototype.slice.call(arguments,0)))}}
		for(var n=0;n<d.length;n++){t(d[n])}}v(n);n.getInstance=function(e){
		e=(!e||e.length===0?"$default_instance":e).toLowerCase()
		;if(!n._iq.hasOwnProperty(e)){n._iq[e]={_q:[]};v(n._iq[e])}return n._iq[e]}
	;e.amplitude=n})(window,document);

var amplitudeUid = uuidCheck;
if(amplitudeUid === null){
	amplitudeUid = '5469ee2a-e07e-47d6-8e69-6944c6967b8a';
}
var appResult = {
	is_release_build: false,
	is_sess: false, // 로그인 유무
  isSession: false,
	appCheck: false,
	device: 'pc',
  timestamp: parseInt("1646104634201", 10)
}

<!---->
appResult.is_sess = true;
appResult.isSession = true;
<!---->
<!---->
appResult.is_release_build = true;
<!---->

var webStatus = appResult;
/* appResult 명을 */

<!---->
amplitude.getInstance().init("65bebb55595beb82e78d5d1ae808702c", amplitudeUid);
<!---->
</script>

<script src="/common_js/kurlytracker/kurlytracker.js?ver=1.65.2"></script>
<script>
  // KM-4988 : amplitude userProperties 업데이트
  var userProperties = {
    membership_level: '웰컴',
    cust_no: Number('25121937'),
  };
  KurlyTracker.setUserProperties(userProperties);
</script>

<script>
  // KM-1238 branch
  (function(b,r,a,n,c,h,_,s,d,k){if(!b[n]||!b[n]._q){for(;s<_.length;)c(h,_[s++]);d=r.createElement(a);d.async=1;d.src="https://cdn.branch.io/branch-latest.min.js";k=r.getElementsByTagName(a)[0];k.parentNode.insertBefore(d,k);b[n]=h}})(window,document,"script","branch",function(b,r){b[r]=function(){b._q.push([r,arguments])}},{_q:[],_v:1},"addListener applyCode autoAppIndex banner closeBanner closeJourney creditHistory credits data deepview deepviewCta first getCode init link logout redeem referrals removeListener sendSMS setBranchViewData setIdentity track validateCode trackCommerceEvent logEvent disableTracking".split(" "), 0);
  var BRANCHKEY = 'key_live_meOgzIdffiVWvdquf7Orkacksxa2LneN';
  if(!webStatus.is_release_build){
    BRANCHKEY = 'key_test_joIkrHgomhL3qaEreXL5QdigzEn6Ucd4';
  }
  branch.init(BRANCHKEY);
  branch.setIdentity(uuidCheck);
  branch.track("pageview");
</script>




<script src="/common_js/kurlytracker/facebookConversions.js?ver=1.65.2"></script>

<script src="/asset/js/useKurly/kurlyAPI.bundle.js"></script>
<script src="/common_js/identify-verification.js?ver=1.65.2"></script>

<script src="/common_js/eventApple.js?ver=1.65.2"></script>
<script>
eventAppleUserGrade = Number('6');
</script>

<script src="/common_js/holiday-delivery.js?ver=1.65.2"></script>
</head>
<body class="mypage-mypage_orderlist" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">


<script>
  function onErrorKakao() {
    var scriptElement = document.createElement('script');
    scriptElement.src= "https://res.kurly.com/js/lib/kakao.min.js";    //이거 우리쪽 CDN
    document.head.appendChild(scriptElement);
  }
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js" onerror="onErrorKakao(); this.onerror=null;"></script>
<div id="wrap" class="">
<div id="pos_scroll"></div>
<div id="container">
<div id="header"><script>
  var ieCheckAgent = navigator.userAgent.toLowerCase();
  if ( (navigator.appName === 'Netscape' && navigator.userAgent.search('Trident') !== -1) || (ieCheckAgent.indexOf("msie") !== -1) ) {
    // ie11 이하 페이지 이동
    location.href = "/shop/event/browserUpdate.php";
  }
</script>

<div class="bnr_header bnr_top_friend" id="top-message" style="display: none;">


<div id="topBanner">
<a href="https://www.kurly.com/shop/main/html.php?htmid=event/kurly.htm&name=friend">
친구 초대하면 친구도 나도 적립금 <b>5천원!</b><img src="https://res.kurly.com/pc/ico/1908/ico_arrow_333_84x84.png" class="bnr_arr">
</a>
<div class="bnr_top">
<div class="inner_top_close">
<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
</div>
</div>
</div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
      $("#top-message-close").on("click",function(){
        var expires = new Date().setDate(new Date().getDate() + 1);
        localStorage.setItem('top_banner_hide', String(expires));
      });

      // 띠배너 만료 시간이 지나면 로컬 스토리지에서 삭제하여 띠배너가 보이게 합니다.
      var isStoredHide = localStorage.getItem('top_banner_hide');
      var isExpiredBanner = function(date) {
        return new Date().valueOf() >= date;
      }

      if(isStoredHide){
        if(isExpiredBanner(Number(isStoredHide))) {
          localStorage.removeItem('top_banner_hide');
          $("#top-message").show();
          return;
        }
        $("#top-message").hide();
      }else {
        $("#top-message").show();
      }
    });
  </script>

<div id="userMenu">
<user-menu-pc :login-check="loginCheck" :notification-item="notificationItem" :user-info="userInfo" :return-url="returnUrl"></user-menu-pc>
</div>
<script src="/common_js/usermenu_v1.js?ver=1.65.2"></script>
<script>
    $(document).ready(function(){

      userMenu.loginCheck = true;
      userMenu.userInfo ={
        userGrade : '6',
        userGradeName : '웰컴',
        memberName : '전상원'
      }

      userMenu.update('member_benefit_policy_badge');

    });
  </script>

<style>
  #headerLogo{position:relative;width:1050px;height:63px;margin:0 auto}
  #headerLogo .bnr_delivery{position:absolute;left:-1px;top:-28px;margin:auto;height:22px}
  #headerLogo .logo{position:absolute;left:0;bottom:6px;width:100%;height:79px;text-align:center}
  #headerLogo .logo .link_main{display:inline-block;height:79px}
  #headerLogo .logo img{display:block;width:103px;height:79px;margin:0 auto}
  #headerLogo .logo #gnbLogoContainer {margin:0 auto}
  #gnb.gnb_stop {height: 56px}
  #gnb.gnb_stop .fixed_container{position:fixed;z-index:300;left:0;top:0;width:100%}
  #gnb .gnb_kurly{position:relative;z-index:300;min-width:1050px;background-color:#fff;font-family:'Noto Sans';letter-spacing:-0.3px}
  #gnb .gnb_kurly:after{content:"";position:absolute;z-index:299;left:0;top:56px;width:100%;height:9px;background:url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png) repeat-x 0 100%}
  #gnb .inner_gnbkurly{position:relative;width:1050px;height:56px;margin:0 auto}
  /* 검색창 */
  #gnb .gnb_search{position:absolute;right:174px;top:10px;width:242px}
  #gnb .gnb_search .inp_search{width:242px;height:36px;padding:0 60px 0 14px;border:1px solid #f7f7f6;border-radius:18px;background-color:#f7f7f7;font-family: 'Noto Sans';font-weight:400;font-size:12px;color:#666;line-height:16px;outline:none}
  #gnb .gnb_search .inp_search.focus{background-color:#fff;color:#333}
  #gnb .gnb_search .btn_search{position:absolute;right:5px;top:3px;width:30px;height:30px}
  /* 장바구니 */
  #gnb .cart_count{position:absolute;right:-5px;top:10px}
  #gnb .cart_count .inner_cartcount{text-align:center;font-weight:400}
  #gnb .cart_count .btn_cart{display:block;width:36px;height:36px;background:url(https://res.kurly.com/pc/service/common/2011/ico_cart.svg) no-repeat 50% 50%}
  #gnb .cart_count .btn_cart:hover{background:url(https://res.kurly.com/pc/service/common/2011/ico_cart_on.svg?v=1) no-repeat 50% 50%}
  #gnb .cart_count .num{display:none;position:absolute;left:19px;top:-1px;min-width:20px;height:20px;padding:0 5px;border:2px solid #fff;border-radius:10px;background-color:#5f0080;font-size:9px;color:#fff;line-height:15px;text-align:center;white-space:nowrap}
  #gnb .cart_count img{display:block;width:36px;height:36px;margin:0 auto}
  #gnb .cart_count .msg_cart{display:none;position:absolute;right:-7px;top:61px;width:348px;border:1px solid #ddd;background-color:#fff;/* opacity:0; */}
  #gnb .cart_count .inner_msgcart{display:block;overflow:hidden;padding:20px 0 20px 20px}
  #gnb .cart_count .msg_cart .thumb{float:left;width:46px;height:60px}
  #gnb .cart_count .msg_cart .desc{float:left;width:260px;padding:8px 0 0 20px;font-weight:700;font-size:14px;line-height:21px}
  #gnb .cart_count .msg_cart .desc.add{padding-top:0;margin-top:-5px;}
  #gnb .cart_count .msg_cart .tit{display:block;overflow:hidden;width:100%;color:#999;white-space:nowrap;text-overflow:ellipsis}
  #gnb .cart_count .msg_cart .name{overflow:hidden;float:left;max-width:178px;text-overflow:ellipsis}
  #gnb .cart_count .msg_cart .txt{display:block;padding-top:3px;color:#333}
  #gnb .cart_count .msg_cart .point{position:absolute;right:13px;top:-14px;width:20px;height:14px;background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png) no-repeat 0 0}
  #gnb .cart_count .msg_cart .repeat{display:none}
  #gnb .cart_count .msg_cart .add .repeat{display:block}
  /* GNB메인 */
  #gnb .gnb_main{overflow:hidden;width:1050px;margin:0 auto}
  #gnb .gnb_main .gnb{float:left;width:100%}
  #gnb .gnb_main .gnb li{float:left}
  #gnb .gnb_main .gnb .lst{background:none}
  #gnb .gnb_main .gnb a{overflow:hidden;float:left;width:124px;height:55px;padding:16px 0 0;font-size:16px;color:#333;line-height:20px;text-align:center}
  #gnb .gnb_main .gnb a .txt{font-weight:700}
  #gnb .gnb_main .gnb a:hover,
  #gnb .gnb_main .gnb a.on{font-weight:700;color:#5f0080}
  #gnb .gnb_main .gnb a:hover .txt{border-bottom:1px solid #5f0080}
  #gnb .gnb_main .menu1 a{width:148px}
  #gnb .gnb_main .menu1 .ico{float:left;width:16px;height:14px;margin:5px 14px 0 0;background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png) no-repeat}
  #gnb .gnb_main .menu1 a.on .ico,
  #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png) no-repeat 0 0}
  #gnb .gnb_main .menu1 a.on .txt,
  #gnb .gnb_main .menu1 a:hover .txt,
  #gnb .gnb_main .menu1 .txt{float:left;font-weight:700;border-bottom:0}
  #gnb .gnb_main .menu3 a{width:116px}
  #gnb .gnb_main .lst a{width:116px}
  /* GNB서브 */
  #gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
  #gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
  #gnb .size_over{overflow-x:hidden;overflow-y:auto}
  #gnb .gnb_sub .gnb_menu{width:219px}
  #gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
  #gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
  #gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer}
  #gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
  #gnb .gnb_sub .current .menu{background:#f7f7f7}
  #gnb .gnb_sub .current .txt,
  #gnb .gnb_sub .menu.on.off:hover .txt,
  #gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
  #gnb .gnb_sub .ico{float:left;width:24px;height:24px}
  #gnb .gnb_sub .ico img{width:24px;height:24px}
  #gnb .gnb_sub .ico .ico_off{display:block}
  #gnb .gnb_sub .ico .ico_on{display:none}
  #gnb .gnb_sub .current .ico_off,
  #gnb .gnb_sub .menu.on .ico_off,
  #gnb .gnb_sub .menu:hover .ico_off{display:none}
  #gnb .gnb_sub .current .ico_on,
  #gnb .gnb_sub .menu.on .ico_on,
  #gnb .gnb_sub .menu:hover .ico_on{display:block}
  #gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
  #gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
  #gnb .gnb_sub .current .ico_arrow{display:block}
  #gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
  #gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
  #gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
  #gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
  #gnb .gnb_sub .sub_menu li:first-child{padding-top:11px}
  #gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:18px;cursor:pointer}
  #gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
  #gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
  #gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
  #gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
  #gnb .gnb_sub .recommend li:first-child{padding-top:0}
  #gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
  #gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
  #gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
  #gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
  #gnb .btn_location{overflow:hidden;position:absolute;right:107px;top:10px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting_done.svg) no-repeat 50% 50%;font-size:0;text-indent:-9999px}
  #gnb .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting.svg?ver=1)}
  #gnb .layer_location{display:none;position:absolute;z-index:300;right:41px;top:56px;width:315px;padding:18px 18px 19px 20px;border:1px solid #ddd;background-color:#fff}
  #gnb .layer_location:after{content:"";position:absolute;right:66px;top:-50px;width:36px;height:50px;background:url(https://res.kurly.com/pc/ico/2011/ico_point_up_18x12.svg) no-repeat 50% 100%}
  #gnb .layer_location *{font-weight:500;font-size:16px;color:#333;line-height:24px;letter-spacing:-0.34px}
  #gnb .layer_location .delivery{display:inline-block;padding-top:8px;font-size:14px;font-weight:normal;letter-spacing:-0.2px;line-height:normal;}
  #gnb .layer_location .courierTime{display:inline-block;margin-left:6px;display:inline-block;font-size:14px;font-weight:normal;line-height:normal;color:#666;letter-spacing:-0.2px;}
  #gnb .layer_location .star{color:#5f0080}
  #gnb .layer_location .regular{color:#666}
  #gnb .layer_location .none{color:#999}
  #gnb .layer_location .btn{display:block;width:100%;height:36px;margin-top:17px;padding-bottom:2px;border-radius:3px;font-size:12px;line-height:32px;letter-spacing:0;text-align:center}
  #gnb .layer_location a.btn{padding-top:0}
  #gnb .layer_location .btn.default{border:1px solid #5f0080;background-color:#fff;color:#5f0080}
  #gnb .layer_location .btn.active{border:1px solid #5f0081;background-color:#5f0080;color:#fff}
  #gnb .layer_location .btn .ico{display:inline-block;width:20px;height:20px;margin:6px 0 0 -6px;background:url(https://res.kurly.com/pc/ico/2008/ico_search_40x40.png) no-repeat 50% 50%;background-size:20px 20px;vertical-align:top}
  #gnb .layer_location .group_button{display:block;overflow:hidden}
  #gnb .layer_location .double .default{float:left;width:110px}
  #gnb .layer_location .double .active{float:right;width:159px}
  #gnb .layer_location .double .btn {margin-left: 0; margin-right:0;}
  #gnb .layer_location .emph{color:#5f0080}
  #gnb .location_set:hover .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2010/ico_delivery_setting_on.svg)}
  #gnb .location_set.show .layer_location,
  #gnb .location_set:hover .layer_location{display:block}
  #gnb .location_set .btn_location.off,
  #gnb .location_set .btn_location.off:hover{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_off.svg?ver=1);cursor:default}
  #gnb .location_set.off .layer_location,
  #gnb .location_set.off:hover .layer_location{display:none}
  #gnb .gnbPick{
    display: inline-block;
    position: absolute;
    right: 51px;
    top: 10px;
    width: 36px;
    height: 36px;
    font-size: 0px;
  }
  #gnb .gnbPick .btn_pick{
    display: inline-block;
    width: 36px;
    height: 36px;
    border: none;
    color: transparent;
    background: url(https://res.kurly.com/pc/service/pick/btn-heart-off.svg) no-repeat 50% 50%;
    cursor: pointer;
  }
  #gnb .gnbPick .btn_pick:hover{
    background: url(https://res.kurly.com/pc/service/pick/btn-heart-hover.svg) no-repeat 50% 50%;
  }
  /* 오류 */
  #gnb .layer_location .error .txt{display:block;color:#333}
  @media
  only screen and (-webkit-min-device-pixel-ratio: 1.5),
  only screen and (min-device-pixel-ratio: 1.5),
  only screen and (min-resolution: 1.5dppx) {
    #gnb .gnb_sub .ico_new{background:url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png) no-repeat 0 0;background-size:14px 14px}
    #gnb .cart_count .msg_cart .point{background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png) no-repeat 0 0;background-size:20px 14px}
    #gnb .gnb_main .menu1 .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png) no-repeat 0 0;background-size:16px 14px}
    #gnb .gnb_main .menu1 a.on .ico,
    #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png) no-repeat 0 0;background-size:16px 14px}
  }
  .gnb_search .init{position:relative}
  .gnb_search .init .btn_delete{overflow:hidden;position:absolute;left:170px;top:-36px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2010/ico_search_del.svg) no-repeat 50% 50%;background-size:12px 12px;font-size:0;line-height:0;text-indent:-9999px;opacity:0}
  .gnb_search .init .btn_delete.on{opacity:1}
</style>
<div id="headerLogo" class="layout-wrapper">
<h1 class="logo">
<a href="/" class="link_main">
<span id="gnbLogoContainer"></span>
<img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고">
</a>
</h1>
<a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
<img src="https://res.kurly.com/pc/service/common/2011/delivery_210801.png" alt="샛별, 택배 배송안내" width="121" height="22">
</a>
</div>
<div id="gnb">
<div class="fixed_container">
<h2 class="screen_out">메뉴</h2>
<div id="gnbMenu" class="gnb_kurly">
<div class="inner_gnbkurly">
<div class="gnb_main">
<ul class="gnb">
<li class="menu1"><a href="#none"><span class="ico"></span><span class="txt">전체 카테고리</span></a></li>
<li class="menu2"><a class="link new " href="/shop/goods/goods_list.php?category=038"><span class="txt">신상품</span></a></li>
<li class="menu3"><a class="link best " href="/shop/goods/goods_list.php?category=029"><span class="txt">베스트</span></a></li>
<li class="menu4"><a class="link bargain " href="/shop/goods/goods_list.php?list=sale"><span class="txt">알뜰쇼핑</span></a></li>
<li class="lst"><a class="link event " href="/shop/goods/event.php?&"><span class="txt">특가/혜택</span></a></li>
</ul>
<div id="side_search" class="gnb_search">
<form action="/shop/goods/goods_search.php?&" onsubmit="return searchTracking(this)">
<input type=hidden name=searched value="Y">
<input type=hidden name=log value="1">
<input type=hidden name=skey value="all">
<input type="hidden" name="hid_pr_text" value="">
<input type="hidden" name="hid_link_url" value="">
<input type="hidden" id="edit" name="edit" value="">
<input name="sword" type="text" id="sword" class="inp_search" value="" required label="검색어" placeholder="검색어를 입력해주세요.">
<input type=image src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
<div class="init">
<button type="button" class="btn_delete" id="searchInit">검색어 삭제하기</button>
</div>
</form>
<script>
            // KM-1483 Amplitude 연동
            function searchTracking(form){
              var searchCharacter = $(form).find('[name = sword]').val();
              searchCharacter = searchCharacter.replace(/\"/gi, "");
              var _searchTrackingData = {
                selection_type : 'keyword',
                keyword : searchCharacter,
                package_id : null,
                package_name : null,
                position : null,
              }
              KurlyTracker.setAction('select_search', _searchTrackingData).sendData();
              return chkForm(form);
            }
          </script>
</div>
<div class="cart_count">
<div class="inner_cartcount">
<a href="/shop/goods/goods_cart.php" class="btn_cart">
<span class="screen_out">장바구니</span>
<span class="num realtime_cartcount" id="cart_item_count"></span> </a>
</div>
<div id="addMsgCart" class="msg_cart">
<span class="point"></span>
<div class="inner_msgcart">
<img src="https://res.kurly.com/images/common/bg_1_1.gif" alt="" class="thumb">
<p id="msgReaddedItem" class="desc">
<span class="tit"></span>
<span class="txt">
장바구니에 상품을 담았습니다.
<span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span>
</span>
</p>
</div>
</div>
</div>
<div class="location_set">
<button type="button" class="btn_location on">배송지 설정하기</button>
<div class="layer_location" style="display:none"></div>
</div>
<div class="gnbPick">
<a class="btn_pick" href="/shop/mypage/mypage_pick.php">찜한 상품 보기</a>
</div>
<script src="/asset/js/myp/destination/popup.bundle.js?ver=1.65.2"></script>
</div>
<div class="gnb_sub">
<div class="inner_sub">
<ul class="gnb_menu" data-default="219" data-min="219" data-max="731">
<gnb-menu-pc v-for="(item, idx) in dataGnb" :main-menu="item" :sub-menu="item.categories" :sub-open="item.subOpen" :get-category-num="getCategoryNum" :key="'gnb'+idx" :idx="idx"></gnb-menu-pc>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="/common_js/gnb_v1.js?ver=1.65.2"></script>
<script type="text/javascript">
  //
  gnbMenu.update();

  // 검색창 클래스 추가/삭제
  var searchInputAction = (function(){
    var $target = {};

    var _searchInputAction = {
      setSeletor: function(){
        $target = {
          $parent: $('#gnb'),
          $search: $('#gnb [name=sword]'),
          $deleteBtn: $('#searchInit'),
          $edit: $('#edit')
        }

        this.setAction();
      },
      setAction: function(){
        var that = this;
        $target.$search.focus(function(){
          that.changeClass($target.$search, 'add', 'focus');
          that.deleteCheck();
        }).blur(function(){
          that.changeClass($target.$search, 'remove', 'focus');
          that.deleteCheck(false);
        }).on('keyup', function(){
          if($target.$edit.val() !== 'Y'){
            $target.$edit.val('Y');
          }
          that.deleteCheck();
        });

        $target.$deleteBtn.on('click', function(){
          $target.$search.val('');
          that.deleteCheck();
        });
      },
      deleteCheck: function(type){
        var that = this, count = $.trim($target.$search.val()).length;
        if(count === 0 || (typeof type !== 'undefined' &&  !type) ){
          that.changeClass($target.$deleteBtn, 'remove', 'on');
        }else{
          that.changeClass($target.$deleteBtn, 'add', 'on');
        }
      },
      changeClass: function(target, type, className){
        if(type === 'add'){
          target.addClass(className);
        }else{
          target.removeClass(className);
        }
      }
    }

    _searchInputAction.setSeletor();
  })();

  // 로고 클릭 이벤트
  $('#header .link_main').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    if (url.indexOf('/') === 0) {
      url = window.location.origin + url;
    }

    KurlyTracker.setAction('select_main_logo', {"url": url}).sendData();
    location.href = url;
  });

  $('#gnb .gnb .link').on('click', function(e){
    e.preventDefault();
    var _event_name, _event_info;
    if(sessionStorage.getItem('goodsListReferrer')){
      sessionStorage.setItem('goodsListReferrer', false);
    }
    if($(this).hasClass('new')){
      _event_name = 'select_new_product_subtab';
    }else if($(this).hasClass('best')){
      _event_name = 'select_popular_product_subtab';
    }else if($(this).hasClass('bargain')){
      _event_name = 'select_bargain_subtab';
    }else if($(this).hasClass('event')){
      _event_name = 'select_event_list_subtab';
    }
    _event_info = $(this).attr('href');

    KurlyTracker.setAction(_event_name).sendData();
    location.href = _event_info;
  });

  // 장바구니 아이콘 클릭이벤트
  $('#gnbMenu .btn_cart').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_cart').sendData();
    location.href = $(this).attr('href');
  });

  // 찜하기 아이콘 클릭이벤트
  $('#gnbMenu .btn_pick').on('click', function(e) {
    e.preventDefault();
    KurlyTracker.setAction('select_my_kurly_pick_list', { selection_type: 'header' }).sendData();
    location.href = $(this).attr('href');
  });
</script>
</div>
<div id="main">
<div id="content">

<div id="qnb" class="quick-navigation">
<style>
    #qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
    .goods-goods_view #qnb{top:20px}
    /* 배너 */
    #qnb .bnr_qnb{padding-bottom:7px}
    #qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}
    /* 메뉴 */    
    #qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
    #qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
    #qnb .link_menu:hover,
    #qnb .link_menu.on{color:#5f0080}
    /* 최근본상품 */
    #qnb .side_recent{position:relative;margin-top:6px;border:1px solid #ddd;background-color:#fff}
    #qnb .side_recent .tit{display:block;padding:22px 0 6px;text-align:center}
    #qnb .side_recent .list_goods{overflow:hidden;position:relative;width:60px;margin:0 auto}
    #qnb .side_recent .list{position:absolute;left:0;top:0}
    #qnb .side_recent .link_goods{display:block;overflow:hidden;width:60px;height:80px;padding:1px 0 2px}
    #qnb .side_recent .btn{display:block;overflow:hidden;width:100%;height:17px;border:0 none;font-size:0;line-height:0;text-indent:-9999px}
    
    #qnb .side_recent .btn_up{position:absolute;left:0;top:0;background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_up.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_down{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png) no-repeat 50% 0}
    #qnb .side_recent .btn_down.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png) no-repeat 50% 0}
    
    
    @media
    only screen and (-webkit-min-device-pixel-ratio: 1.5),
    only screen and (min-device-pixel-ratio: 1.5),
    only screen and (min-resolution: 1.5dppx) {
        #qnb .side_recent .btn_up{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_up.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);background-size:12px 18px}
    }
    @media all and (max-width: 1250px){
        #qnb{display:none}
    }
</style>

<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1646104634210',
        update : function(){
            $.ajax({
                url : campaginUrl + 'pc/service/bnr_quick.html'
            }).done(function(result){
                $('#brnQuick').html(result);
            });    
        }
    }
    brnQuick.update();
</script>

<div class="side_menu">
<a href="/shop/main/html.php?htmid=event/kurly.htm&name=lovers" class="link_menu ">등급별 혜택</a>
<a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
</div>
<div class="side_recent" style="display:none">
<strong class="tit">최근 본 상품</strong>
<div class="list_goods" data-height="209">
<ul class="list"></ul>
</div>
<button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
<button type="button" class="btn btn_down">최근 본 상품 아래로 내리기</button>
</div>
<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1646104634210';

    _goodsRecent();
    function _goodsRecent(){
        if(localStorage.getItem('goodsRecent') === null){
            return false;
        }
        
        try{
            getGoodsRecent = JSON.parse(localStorage.getItem("goodsRecent"));
            len = getGoodsRecent.length;
            if(addDays(getGoodsRecent[len - 1].time, 1) < _nowTime){
                localStorage.removeItem('goodsRecent');
            }else{
                for(i = 0; i < len; i++){
                    item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno=' + getGoodsRecent[i].no + '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
                    $('.side_recent .list').append(item);
                }
                $('.side_recent').show();
            }
        } catch(e){
            console.log("JSON parse error from the Quick menu goods list!!!", e);
        }
    }

    function addDays(date, days){
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result.getTime();
    }
    
    // return {
    // }
})();
</script>
</div>
<div id="myPageTop" class="page_aticle mypage_top">
<h2 class="screen_out">마이페이지</h2>
<mypage-top :kurlylovers_benefit_tag="kurlylovers_benefit_tag" :kurlylovers_benefit_badge="kurlylovers_benefit_badge" :member-benefits-point-type="memberBenefitsPointType" :member-benefits-point-tag="memberBenefitsPointTag" :member-benefits-point-vallue="memberBenefitsPointVallue" :member-benefits-point-description="memberBenefitsPointDescription" :member-benefits-delivery-type="memberBenefitsDeliveryType" :member-benefits-delivery-tag="memberBenefitsDeliveryTag" :member-benefits-delivery-vallue="memberBenefitsDeliveryVallue" :member-benefits-delivery-description="memberBenefitsDeliveryDescription" :member-benefits-special-type="memberBenefitsSpecialType" :member-benefits-special-tag="memberBenefitsSpecialTag" :member-benefits-special-vallue="memberBenefitsSpecialVallue" :member-benefits-special-description="memberBenefitsSpecialDescription" :on-click-my-banner="onClickMyBanner" :user-name="userName" :user-grade="userGrade" :user-grade-info="userGradeInfo" :user-grade-name="userGradeName" :accumulated-money="accumulatedMoney" :coupon-count="couponCount" :expire-date="expireDate" :expire-point="expirePoint" :kurly-pass-expiration-date="kurlyPassExpirationDate" :type="type" :notification-check="notificationCheck"></mypage-top>
</div>
<div class="bg_loading" id="bgLoading">
<div class="loading_show"></div>
</div>
<script src="https://res.kurly.com/js/lib/moment.min.js"></script>
<script src="/common_js/common_filter.js?ver=1.65.2"></script>
<script src="/common_js/mypage_v1.js?ver=1.65.2"></script>
<div class="page_aticle aticle_type2">
<div id="snb" class="snb_my">
<h2 class="tit_snb">마이컬리</h2>
<div class="inner_snb">
<ul class="list_menu">
<li class="on">
<a href="/shop/mypage/mypage_orderlist.php">주문 내역</a>
</li>

<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_gift.php', 'select_my_kurly_gift_list')">선물 내역</a>
</li>
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_pick.php', 'select_my_kurly_pick_list')">찜한 상품</a>
</li>
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/destination/list.php', 'select_shipping_address_list')">배송지 관리</a>
</li>
<li>
<a href="/shop/mypage/mypage_review.php">상품 후기</a>
</li>
<li>
<a href="/shop/mypage/product_inquiry.php">상품 문의</a>
</li>
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'mypage'})">적립금</a>
</li>
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'mypage'})">쿠폰</a>
</li>
<li>
<a href="/shop/member/myinfo.php">개인 정보 수정</a>
</li>
</ul>
</div>
<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
</div>
<div id="viewOrderList" class="page_section section_orderlist" v-cloak>
<div class="head_aticle">
<h2 class="tit">주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span></h2>
</div>
<div class="search_date">
<h3 class="screen_out">기간 선택</h3>
<a href="#none" v-html="checkYear" class="btn_layer"></a>
<ul class="layer_search">
<li><a href="#none" @click="searchResult" class="on">전체기간</a></li>
<li><a href="#none" @click="searchResult" data-year="2022">2022 년</a></li>
<li><a href="#none" @click="searchResult" data-year="2021">2021 년</a></li>
<li><a href="#none" @click="searchResult" data-year="2020">2020 년</a></li>
</ul>
</div>
<ul class="list_order">
<order-itemlist-pc v-for="itemview in postsArray" :ref="itemview.no" :itemview="itemview" :key="itemview.no" :search-date-hash="searchDateHash" v-if="!noData"></order-itemlist-pc>
<li v-if="noData" class="no_data">
주문내역이 없습니다.
</li>
</ul>
<div class="layout-pagination" v-if="!noData">
<div class="pagediv">
<a @click="onMoveList(1)" href="#viewOrderList" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
<a @click="onMoveList(pageCount-1)" href="#viewOrderList" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
<order-itemlist-paging v-for="(paging, idx) in pagingCountArray" :idx="idx+1" :key="idx" :page-count="pageCount" :total-page-count="totalPageCount" @on-move-list="onMoveList"></order-itemlist-paging>
<a @click="onMoveList(pageCount+1)" href="#viewOrderList" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
<a @click="onMoveList(endPaging)" href="#viewOrderList" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
</div>
</div>
</div>
</div>
<div id="oftenList" style="display:none"></div>
<script src="/common_js/common_filter.js?ver=1.65.2"></script>
<script src="/common_js/orderlist_v1.js?ver=1.65.2"></script>
<script>
    $('.search_date .btn_layer').on('click',function(e){
        e.preventDefault();
        $(this).toggleClass('on');
        $('.search_date .layer_search').slideToggle(100);
    });

    // KM-1483 Amplitude
    if(typeof KurlyTracker !== 'undefined') {
      KurlyTracker.setScreenName('order_history').setTabName('my_kurly');
    }
</script>
</div>
</div>

<div id="layerDSR">
<div class="bg_dim"></div>
<div class="in_layer">
<div class="inner_layer layer_star">
<strong class="dsr_result">샛별배송 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="샛별배송 이미지">
</div>
<p class="dsr_desc">
매일 아침, 문 앞까지 신선함을 전해드려요.
</p>
<div class="direct_courier_operation_notice">
<span class="courier_message">
<span class="startAt"></span>시~<span class="endAt"></span>시 주문은 택배로 배송되며<br>
다음날 밤 12시 이전 도착합니다. (토요일 주문 불가)
</span>
</div>
</div>
<div class="inner_layer layer_normal">
<strong class="dsr_result">택배배송 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="택배배송 이미지">
</div>
<p class="dsr_desc">
오늘 주문하면 다음 날 바로 도착해요.
</p>
<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
</div>
<div class="inner_layer layer_none">
<strong class="dsr_result">배송 불가 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="배송불가 이미지">
</div>
<p class="dsr_desc">
더 많은 곳에 배송될 수 있게<br>
최선을 다하겠습니다.
</p>
</div>
<div class="layer_btn1">
<button type="button" class="btn_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
</div>
<button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
</div>
</div>
<div id="footer">
<div class="footer-top">
<div class="inner_footer">
<div class="footer_cc">
<h2 class="tit_cc">고객행복센터</h2>
<div class="cc_view cc_call">
<h3><span class="tit">1644-1107</span></h3>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>
<div class="cc_view cc_kakao">
<h3><a class="tit" href="#none">카카오톡 문의</a></h3>
<script type="text/javascript">
                $('.cc_kakao .tit').on('click',function(e){
                  e.preventDefault();
                  KurlyTracker.setAction('select_bottom_kakao_button').sendData();
                  $.ajax({
                    type: "GET",
                    url: apiDomain+'/v1/mypage/asks/confirm/kakao',
                    dataType: 'json',
                    success: function(data) {
                      if(data.data.ok_button_action_url.indexOf('https://api.happytalk.io/') > -1){
                        if(confirm('['+data.data.title+'] '+data.data.message)) window.open(data.data.ok_button_action_url,'_blank');
                      }else{
                        alert(data.data.title+'\n'+data.data.message);
                      }
                    }
                  })
                });
              </script>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>
<div class="cc_view cc_qna">
<h3><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna_register.php?mode=add_qna', 'select_bottom_onebyone_button')" class="tit">1:1 문의</a></h3>
<dl class="list">
<dt>24시간 접수 가능</dt>
<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
</dl>
</div>
<div class="cc_view cc_bulkorder">
<h3><a href="/shop/main/html.php?htmid=mypage/bulk_order.htm" class="tit">대량주문 문의</a></h3>
<p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
</div>
</div>
<div class="company">
<ul class="list">
<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
<li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
<li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
</ul>
법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
<br>
통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준
<br>
주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span> 대표이사 : 김슬아
<br>
입점문의 : <a href="https://docs.google.com/forms/d/e/1FAIpQLScLB7YkGJwNRzpGpp0gbR1i4C1_uvTEFj43SFfJ_XEadTn3gQ/viewform?usp=sf_link" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 마케팅제휴 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
<br>
채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
<br>
팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
<br>
대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com" class="link">kurlygift@kurlycorp.com</a>
<br>
<ul class="list_sns">
<li>
<a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_instagram.png" alt="마켓컬리 인스타그램 바로가기"></a>
</li>
<li>
<a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_fb.png" alt="마켓컬리 페이스북 바로가기"></a>
</li>
<li>
<a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_blog.png" alt="마켓컬리 네이버블로그 바로가기"></a>
</li>
<li>
<a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
<li>
<a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_youtube.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
</ul>
</div>
</div>
<div class="footer_link">
<div class="authentication">
<a href="#none" onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;" class="mark" target="_blank">
<img src="https://res.kurly.com/pc/ico/2001/logo_isms.png" alt="isms 로고" class="logo">
<p class="txt">
[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br>
[유효기간] 2019.04.01 ~ 2022.03.31
</p>
</a>
<a href="#none" onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2021-EP-R003',527,720);return false;" class="mark" target="_blank">
<img src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png" alt="eprivacy plus 로고" class="logo">
<p class="txt">
개인정보보호 우수 웹사이트 ·<br>
개인정보처리시스템 인증 (ePRIVACY PLUS)
</p>
</a>
<a href="#none" onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;" class="mark lguplus" target="_blank">
<img src="https://res.kurly.com/pc/service/main/2009/logo_payments.png" alt="payments 로고" class="logo">
<p class="txt">
고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br>
토스 페이먼츠 구매안전(에스크로) 서비스를 이용하실 수 있습니다.
</p>
</a>
</div>
</div>
</div>
<div class="footer_indemnification_clause">
<p class="txt">마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.</p>
<p class="txt">마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 컬리는 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.</p>
<em class="copy">&copy; KURLY CORP. ALL RIGHTS RESERVED</em>
</div>
</div>
</div>
</div>

<a href="#top" id="pageTop">맨 위로가기</a>
<script>
	$(document).ready(function(){
		var pageTop = {
			$target : $('#pageTop'),
			$targetDefault : 0,
			$scrollTop : 0,
			$window : $(window),
			$windowHeight : 0,
			setTime : 500,
			saveHeight : 0,
      trackerEventUrl: [
        '/shop/main/index.php',
        '/shop/goods/list_all.php',
      ],
			init:function(){
			},
			action:function(){
				var $self = this;
				$self.$windowHeight = parseInt($self.$window.height());
				$self.$window.on('scroll', function(){
					$self.$scrollTop = parseInt($self.$window.scrollTop());
					if($self.$scrollTop >= $self.$windowHeight){
						if(!$self.$target.hasClass('on')){
							$self.position();
							$self.$target.addClass('on');
							$self.showAction();
						}
					}else{
						if($self.$target.hasClass('on')){
							$self.position();
							$self.$target.removeClass('on');
							$self.hideAction();
						}
					}
				});

				$self.$target.on('click', function(e){
					e.preventDefault();
					$self.topAction();
				});
			},
			showAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:1,
					bottom:$self.saveHeight
				}, $self.setTime);
			},
			hideAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:0,
					bottom:-$self.$target.height()
				}, $self.setTime);
			},
			topAction:function(){
				var $self = this;
				$self.hideAction();
				$('html,body').animate({
					scrollTop:0
				}, $self.setTime);
        if($self.trackerEventUrl.indexOf(location.pathname) > -1) {
          KurlyTracker.setAction('select_top_button').sendData();
        }
			},
			position:function(){
				var $self = this;
				$self.saveHeight = 15;
				if($('#sectionView').length > 0){
					$self.saveHeight = 25;
				}
				if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
					$('#footer').addClass('bnr_app');
					$self.saveHeight += $('#branch-banner-iframe').height();
				}
			}
		}
		pageTop.action();
	});
</script>

<script>
// 클릭인인경우(푸터에 있으나, 아직공용작업은 못함) => bgLoading 이부분 처리필요
var bodyScroll = {
	winScrollTop : 0,
	body : $('body'),
	gnb : $('#gnb'),
	bg : $('#bgLoading'),
	bodyFixed : function(){
		var $self = this;
		var gnbCheck = false;
		$self.gnb = $('#gnb');
		if($self.gnb.hasClass('gnb_stop')){
			gnbCheck = true;
		}
		$self.body = $('body');
		$self.bg = $('#bgLoading');
		$self.winScrollTop = $(window).scrollTop();
		$self.bg.show();
		$self.body.addClass('noBody').css({
			'top' : -$self.winScrollTop
		});
	},
	bodyDefault : function(type){
		var $self = this;
		$self.body.removeClass('noBody').removeAttr('style');
		$self.bg.hide();
		if(type === undefined){
			window.scrollTo(0, $self.winScrollTop);
		}
	}
}
</script>

<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display:none;width:100%;height:600px;"></iframe>
<script>
(function (theFrame) {
  theFrame.contentWindow.location.href = theFrame.src;
}(document.getElementById("ifrmHidden")));
</script>


<script src="https://res.kurly.com/js/polifill/customeEvent.js"></script>

</body>
</html>