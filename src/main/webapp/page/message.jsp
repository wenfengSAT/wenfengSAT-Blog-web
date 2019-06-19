<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>留言页_文峰的博客 - WF Blog</title>
<link rel="shortcut icon"
  href="${pageContext.request.contextPath}/images/favicon.ico">
<meta name="keywords" content="个人博客,文峰的博客,文峰,WF Blog,wenfengSAT" />
<meta name="description" content="文峰的博客 - WF Blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
</head>
<body style="background:url(${pageContext.request.contextPath}/images/bj.png) repeat top left scroll">
	<%@ include file="top.jsp" %>
	<article>
		<div class="lbox">
			<div class="newblogs ">
        <h2 class="hometitle">
          <span class="tagTitle"> </span>留言
        </h2>
				<div style="width:90%;margin: 0 auto;">
				<!--PC和WAP自适应版-->
				  <div  id="SOHUCS">
				  	留言墙
				  </div>
				</div>
			</div>
			<a class="top animated fadeIn" onclick="window.scrollTo(0,0)" style="display:none;z-index:0;font-size: 24px;position: fixed;bottom: 5%;right: 30%;color:#fff"><span style="padding: 6.5px 12px;background-color: #fff;color: #999;"><i class="fa fa-angle-up"></i></span></a>
		</div>
		<div class="rbox  ">
			<div class="paihang">
       <h2 class="htitle">
          <a href="javascript:void(0)">最新文章</a>
        </h2>
				<!-- <h2 class="ab_title">
					<a href="javascript:void(0)">最新文章</a>
				</h2> -->
				<ul class="new ">

				</ul>
			</div>
			
		</div>
	</article>
	<%@ include file="footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/page/message.js"></script>
	<script src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
</body>
</html>
