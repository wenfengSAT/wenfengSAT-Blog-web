<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>首页_文峰的博客 - WF Blog</title>
<link rel="shortcut icon"
  href="${pageContext.request.contextPath}/images/favicon.ico">
<meta name="keywords" content="个人博客,文峰的博客,文峰,WF Blog,wenfengSAT" />
<meta name="description" content="文峰的博客 - WF Blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/animate.css"
  rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/loaders.css"
  rel="stylesheet">
<link
  href="${pageContext.request.contextPath}/css/plugins/sweetalert/sweetalert.css"
  rel="stylesheet">

<style type="text/css">
.loader-inner>div {
  background-color: #907f819e
}
</style>
</head>
<body
  style="background:url(${pageContext.request.contextPath}/images/bj.png) repeat top left scroll;z-index:-2">
  <%@ include file="top.jsp"%>
  <article style="opacity:0">
    <!-- <div class="pics ">
			<ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div> -->

    <div class="lbox ">
      <div class="banbox">
        <div class="banner">
          <div id="banner" class="fader">
          	<li class="slide" style=""><a
              href="javascript:void(0)" target="_blank"><img
                src="${pageContext.request.contextPath}/images/wx_ad.png"></a></li>
            <li class="slide" style=" "><a
              href="javascript:void(0)" target="_blank"><img
                src="${pageContext.request.contextPath}/images/5e9a97fc44fc12475b6b0e87e2ff5806.jpg"></a></li>

            <li class="slide" style=" "><a
              href="javascript:void(0)"
              target="_blank"><img
                src="${pageContext.request.contextPath}/images/2.jpg"></a></li>

            <li class="slide" style=""><a
              href="javascript:void(0)" target="_blank"><img
                src="${pageContext.request.contextPath}/images/post-bg-kuaidi.jpg"></a></li>
            <div class="fader_controls">
              <div class="pic_page prev" data-target="prev"></div>
              <div class="pic_page next" data-target="next"></div>
              <ul class="pager_list">

              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="headline">
        <ul>
          <li><a href="https://wenfengsat.github.io/" target="_blank"
            title="【推广大使】文峰的博客"><img
              src="${pageContext.request.contextPath}/images/3ee0644472fa8556562ab3d8716b5316.jpg"
              alt="【推广大使】文峰的博客"><span>【推广大使】<br> 文峰的博客 </span></a></li>
          <li><a href="https://github.com/wenfengSAT" target="_blank"
            title="【推广大使】wenfengSAT的 Github"><img
              src="${pageContext.request.contextPath}/images/3f0b6da48a6fd4e626a021ff7bd0d74f.jpg"
              alt="【推广大使】wenfengSAT的 Github"><span>【推广大使】<br>我的 Github,欢迎start</span></a></li>
        </ul>
      </div>

      <div class="clearblank"></div>

      <div class="tab_box whitebg">

        <div class="tab_buttons">
          <ul>
            <li class=""></li>
            <li class=""></li>
          </ul>
        </div>
        <div class="newstab">
          
        </div>


      </div>

      <div class="zhuanti whitebg">
        <h2 class="htitle">特别推荐</h2>
        <ul class="animated ">

        </ul>
      </div>
      <div class="ad whitebg">
        <a><img src="${pageContext.request.contextPath}/images/longad2.png"></a>
      </div>

      <div class="newblogs bloglist whitebg animated fadeIn"
        style="display:none;animation-delay:0.3s">
        <h2 class="htitle">最新文章</h2>
        <ul class="animated ">

        </ul>
        <p class="page" style='display:none'>
        <p>
        <p class="pageMin">
        <p>
      </div>

    </div>


    <div class="rbox">
      <div class="card">
        <h2>名片</h2>
        <p>职业：JavaWEB开发工程师</p>
        <p>现居：广东 - 惠州</p>
        <p>Email：wenfengSAT@163.com</p>
        <p></p>
        <ul class="linkmore">
          <li><a href="/Blog/" target="_self"
            class="iconfont icon-zhuye" title="网站地址"></a></li>
          <li><a
            href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=370875057@qq.com"
            target="_blank" class="iconfont icon-youxiang" title="我的邮箱"></a></li>
          <li><a
            href="http://wpa.qq.com/msgrd?v=3&uin=370875057&site=qq&menu=yes"
            target="_blank" class="iconfont icon---" title="QQ联系我"></a></li>
          <li id="weixin"><a href="#" target="_blank"
            class="iconfont icon-weixin" title="关注我的微信"></a><i><img
              src="${pageContext.request.contextPath}/images/my_vx.png"></i></li>
        </ul>
      </div>


      <div class="dj paihang animated fadeIn"
        style="animation-delay:0.3s">
        <h2 class="htitle">点击排行</h2>
        <ul class="">

        </ul>
      </div>
      <div class="git whitebg links animated fadeIn"
        style="display:none;animation-delay:0.3s">
        <h2 class="htitle">开源项目</h2>
        <ul class="animated fadeIn">
          <li><a href="https://github.com/wenfengSAT" target="_blank">Github</a></li>
        </ul>
      </div>
      <div class="weixin whitebg animated fadeIn"
        style="display:none;animation-delay:0.3s">
        <h2 class="htitle">公众号</h2>
        <ul class="animated fadeIn">
          <img src="${pageContext.request.contextPath}/images/my_vx.png">
        </ul>
      </div>
      <div class="link links whitebg animated fadeIn"
        style="display:none;animation-delay:0.3s">
        <h2 class="htitle">友情链接</h2>
        <ul class="animated fadeIn">

        </ul>
        <div class="msg"
          style="clear: both;text-align: center;margin: 25px 0px 15px;">
          <a href="javascript:void(0)"></a>
        </div>
      </div>

      <div class="guanzhu gd whitebg animated fadeIn"
        style="display:none" id="follow-us">
        <h2 class="cloud_hometitle">来波关注</h2>
        <ul>
          <!-- <li class="qq"><a href="javascript:void(0)"
            target="_blank"><span>QQ号</span>370875057</a></li>
          <li class="email"><a href="javascript:void(0)"
            target="_blank"><span>邮箱帐号</span>wenfengSAT@163.com</a></li> -->
          <li class="wxgzh"><span>公众号</span><a href="javascript:void(0)"
            target="_blank">一封佳书</a></li>
          <li class="wx" style="border:none"><img
            src="${pageContext.request.contextPath}/images/my_vx.png"></li>
        </ul>
      </div>
    </div>
    <a href="#" class="top cd-top animated ">Top</a>
  </article>
  <!-- 全局js -->
  <script src="${pageContext.request.contextPath}/js/page/index.js"></script>
  <script src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
  <script
    src="${pageContext.request.contextPath}/js/plugins/sweetalert/sweetalert.min.js"></script>
</body>

</html>
