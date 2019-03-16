<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>关于我_文峰的博客 - WF Blog</title>
<link rel="shortcut icon"
  href="${pageContext.request.contextPath}/images/favicon.ico">
<meta name="keywords" content="个人博客,文峰的博客,文峰,WF Blog,wenfengSAT" />
<meta name="description" content="文峰的博客 - WF Blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">

</head>
<body
	style="background:url(${pageContext.request.contextPath}/images/bj.png) repeat top left scroll">
	<%@ include file="top.jsp"%>
	<article>
		<div class="lbox">
			<div class="infos">
				<div class="newsview">
					<h2 class="intitle">
						您现在的位置是：<a href="index.jsp">网站首页</a>&nbsp;&gt;&nbsp;<a
							href="about.jsp">关于我</a>
					</h2>
					<div class="news_infos m20 animated fadeIn">
          <br>
						<h3 style="color: #000;font-size: 15px;">关于站长</h3>
						<br>
						<p>一枚90后程序猿，javaWeb开发工程师。</p>
						<br>
						<h3 style="color: #000;font-size: 15px;">为什么要做这个网站</h3>
						<br>
						<p>（1）记录一些工作当中遇到的问题、笔记，分享一些开发经验。</p>
						<br>
						<h3 style="color: #000;font-size: 15px;">关于我的博客</h3>
						<br>
						<p><a href="javascript:void(0)">https://wenfengsat.github.io/about/</a></p>
						<a target= "_blank" href="https://wenfengsat.github.io/about/"><span style="color: #12aae8;font-size: 13px;">查看更多</span></a>
					<br>
          <br>
          </div>
				</div>
			</div>
		</div>
		<div class="rbox ">
			<div class="aboutme m20 whitebg">
				<h2 class="htitle">关于我</h2>
				<div class="avatar1 animated fadeIn">
					<img src="${pageContext.request.contextPath}/images/my.jpg">
				</div>
				<div class="ab_con animated fadeIn">
					<p>常驻：广东-惠州</p>
					<p>QQ：1043977215</p>
					<p>邮箱：wenfengSAT@163.com</p>
				</div>
			</div>
			<div class="weixin animated fadeIn whitebg">
				<h2 class="htitle">公众号</h2>
				<ul>
					<img src="${pageContext.request.contextPath}/images/my_vx.png">
				</ul>
			</div>
		</div>
	</article>
</body>
</html>
