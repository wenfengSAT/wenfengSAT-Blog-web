<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>${blog.title}</title>
<link rel="shortcut icon"
  href="${pageContext.request.contextPath}/images/favicon.ico">
<meta name="keywords" content="${blog.keyword}" />
<meta name="description" content="${blog.introduction}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/github-gist.css"
  rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.css"
  rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.css"
  rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/comment/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins/comment//comment.css">
<script
    src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>
<body
  style="background:url(${pageContext.request.contextPath}/images/bj.png) repeat top left scroll">
  <%@ include file="top.jsp"%>
  <article>
    <div class="tool-box">
      <!-- 分享： -->
      <ul>
        <li><a title="点赞" style="" href="#cyEmoji"><i
            class="fa fa-thumbs-up"></i><br>点赞</a></li>
        <li><a title="评论" style="" href="#news_pl"><i
            class="fa fa-commenting"></i><br>评论</a></li>
        <li><script type="text/javascript">
          (function() {
            var p = {
              url : location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
              desc : '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
              title : '${blog.title}', /*分享标题(可选)*/
              summary : '${blog.introduction}', /*分享摘要(可选)*/
              pics : '${blog.images}', /*分享图片(可选)*/
              flash : '', /*视频地址(可选)*/
              site : '文峰的博客 - WF Blog', /*分享来源(可选) 如：QQ分享*/
              style : '201',
              width : 35,
              height : 35
            };
            var s = [];
            for (var i in p) {
              s.push(i + '=' + encodeURIComponent(p[i] || ''));
            }
            document.write([ '<a title="分享到QQ" style="" href="http://connect.qq.com/widget/shareqq/index.html?', s.join('&'), '" target="_blank"><i class="fa fa-qq"></i><br>QQ</a>' ].join(''));
          })();
        </script> <script src="http://connect.qq.com/widget/loader/loader.js"
            widget="shareqq" charset="utf-8"></script></li>
        <li><script type="text/javascript">
          (function() {
            var p = {
              url : location.href,
              showcount : '1', /*是否显示分享总数,显示：'1'，不显示：'0' */
              desc : '', /*默认分享理由(可选)*/
              summary : '${blog.introduction}', /*分享摘要(可选)*/
              title : '${blog.title}', /*分享标题(可选)*/
              site : '文峰的博客 - WF Blog', /*分享来源 如：腾讯网(可选)*/
              pics : '${blog.images}', /*分享图片的路径(可选)*/
              style : '201',
              width : 113,
              height : 39
            };
            var s = [];
            for (var i in p) {
              s.push(i + '=' + encodeURIComponent(p[i] || ''));
            }
        
            document.write([ '<a title="分享到空间" version="1.0" style="" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?', s.join('&'), '" target="_blank"><i class="fa fa-star"></i><br>空间</a>' ].join(''));
          })();
        </script> <script
            src="http://qzonestyle.gtimg.cn/qzone/app/qzlike/qzopensl.js#jsdate=20111201"
            charset="utf-8"></script></li>
        <li><script type="text/javascript">
          (function() {
            var p = {
              url : location.href,
              title : '${blog.title}', /*分享标题(可选)*/
              pic : '${blog.images}', /*分享图片的路径(可选)*/
            };
            var s = [];
            for (var i in p) {
              s.push(i + '=' + encodeURIComponent(p[i] || ''));
            }
            document.write([ '<a title="分享到微博"  style="" href="http://service.weibo.com/share/share.php?', s.join('&'), '" target="_blank"><i class="fa fa-weibo"></i><br>微博</a>' ].join(''));
          })();
        </script></li>
      </ul>
    </div>
    <input id="currentCommentId" type="hidden">
    <div class="lbox">
      <div class="infos">
        <div class="newsview ">
          <h2 class="intitle">
            您现在的位置是：<a href="/">网站首页</a>&nbsp;&gt;&nbsp;<a href="/">技术专栏</a>
          </h2>
          <c:choose>
            <c:when test="${status== '0' || status== '500'}">
              <h3 style="font-size:20px;text-align:center;margin:20px;">Sorry, the resources you visited don't exist~</h3>
              <h3 style="text-align:center;" class="font-bold">抱歉，你所访问的页面不存在~</h3>
              <h4 style="margin-top:55px;text-align:center;">
                <a
                  style="background-color: #676a6c;padding: 5px 10px;color: #fff;border-radius: 10px;"
                  href="${pageContext.request.contextPath}/index.jsp">去首页</a>
              </h4>
            </c:when>
            <c:otherwise>
              <h3 class="news_title animated fadeIn">${blog.title}</h3>
              <input id="blogId" type="hidden" value="${blog.id}">
              <div class="news_author animated fadeIn">
                <span class="au01 ">wfhuang</span><span class="au02">
                  <input class="addtime" type="hidden"
                  value="${blog.addtime}">
                </span><span class="au03">共<b>${blog.clicknum}</b>人围观
                </span>
              </div>
              <input class="typeId" type="hidden"
                value="${blog.type.id}">
              <div class="tags animated fadeIn">
                <input class="tag" type="hidden" value="${blog.keyword}">
              </div>
              <div class="news_about animated fadeIn">
                <strong>简介</strong>${blog.introduction}</div>
              	<input type="hidden" id="blogContent" value="${blog.content}">
              <div class="news_infos animated fadeIn" id="content"></div>
              <br>
              <br>
              <p
                style="font-size:15px;padding: 10px 20px;background: #f7f7f7; border-left: 5px solid rgb(255, 146, 111);">
                <b>转载：</b>感谢您对文峰的博客 - WF Blog的认可，及对该作品以及文章的青睐，非常欢迎各位朋友分享到个人站长或者朋友圈，但转载请说明文章出处。本文章部分图片、文章来源于网络，版权归原作者所有，如有侵权，请与我联系删除。
              </p>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="ds" style="text-align: center;opacity:0">
          <div id="cyReward" role="cylabs" data-use="reward"></div>
        </div>
      </div>
      <div class="nextinfo animated fadeIn">
        <p>
          上一篇：<span class="pre"></span>
        </p>
        <p>
          下一篇：<span class="next"></span>
        </p>
      </div>
      <div class="otherlink animated fadeIn"
        style="padding-bottom:20px;">
        <h2>相关文章</h2>
        <ul>

        </ul>
      </div>
      <div class="news_pl " id="news_pl">
        <h2>文章评论</h2>
        <div style="width:90%;margin: 0 auto;">
	        <div class="commentAll">
			    <!--评论区域 begin-->
			    <div class="reviewArea clearfix">
			        <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
			        <a href="javascript:;" class="plBtn">评论</a>
			    </div>
			    <!--评论区域 end-->
			    <!--回复区域 begin-->
			    <div class="comment-show">
			        <div class="comment-show-con clearfix">
			            
			        </div>
			    </div>
			    <!--回复区域 end-->
			</div>
        </div>
      </div>

    </div>
    <div class="rbox  ">

      <div class="dianji paihang whitebg">
        <h2 class="cloud_hometitle">本栏推荐</h2>
        <ul class="like " style="padding:0px">

        </ul>
      </div>
      <div class="dj dianji paihang whitebg animated fadeInUp"
        style="display:none;animation-delay:0.3s">
        <h2 class="cloud_hometitle">点击排行</h2>
        <ul class="click" style="padding:0px">

        </ul>

      </div>
      <div class="fixed-menu-list animated fadeInUp">
        <div class="sidebar-nav-toc">文章目录</div>
        <div class="post-toc">
          <div class="post-toc-content">
            <ol class="nav1">

            </ol>
          </div>
        </div>
      </div>
    </div>

    <a href="#" class="top cd-top animated ">Top</a>
  </article>

  <%@ include file="footer.jsp"%>
  <script src="${pageContext.request.contextPath}/js/page/info.js"></script>
  <script src="${pageContext.request.contextPath}/js/highlight.pack.js"></script>
  <script>hljs.initHighlightingOnLoad();
  </script>
  <script src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
  <script>
  	var blogContent = $("#blogContent").val();
    document.getElementById('content').innerHTML = marked(blogContent);
  </script>
  <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/comment//jquery-1.12.0.min.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/comment/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
	var blogId = $("#blogId").val();
    $(function () {
        $('.content').flexText();
        queryComments();
    });
    
    function queryComments(){
    	$.ajax({
    		url : contextPath + '/queryComments',
    		type : 'post',
    		data : {
    			blogId : blogId
    		},
    		dataType : 'json',
    		success : function(data) {
    			if(data.result != "" && data.result != null){
    				var comments = data.result;
    				var oHtml = "";
    				$(".comment-show").html(oHtml);
    				for(var i = 0; i < comments.length; i++){
    					//动态创建评论模块
    					var replyComments = comments[i].replyComments;
    			        oHtml += '<div class="comment-show-con clearfix">'+
    			        '<div class="comment-show-con-img pull-left"><img src="'+comments[i].commenterAvatar+'" alt=""></div>'+ 
    			        '<div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> '+
    			        '<a href="#" class="comment-size-name">' + comments[i].commenterName + '</a>: <span class="my-pl-con">&nbsp;'+ comments[i].content +'</span> </div>'+
    			        '<div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+"2019-03-09 12:11:56"+'</span> <div class="date-dz-right pull-right comment-pl-block">'+
    			        '<span id="'+comments[i].id+'" class="date-dz-pl pl-hf hf-con-block pull-left">回复</span> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div>'+
    			        '<div class="hf-list-con">';
    			        var replyHtml = '';
    			        var childComentLength = replyComments.length;
    			        if(childComentLength > 0){
    			        	for(var j = 0; j < childComentLength; j++){
    			        		replyHtml += '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix">'+
    			        		'<a href="#" class="comment-size-name">'+replyComments[j].replierName+': </a><span class="my-pl-con">回复'+
    			        		'<a href="#" class="atName">@' + replyComments[j].toCommenter  + '</a> :' + replyComments[j].replyContent + '</span></div><div class="date-dz"> '+
    			        		'<span class="date-dz-left pull-left comment-time">'+replyComments[j].replyTime+'</span> <div class="date-dz-right pull-right comment-pl-block"> '+
    			        		'<a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
    			        	}
    			        }
    			        oHtml = oHtml + replyHtml + '</div></div> </div>';
    			        /* for(var i = 0; i < replyComments.length; i++){
    			        	replyHtml += '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">'+replyComments[i].replierName+': </a>'+
    			        	'<span class="my-pl-con">回复<a href="#" class="atName">@' + replyComments[i].toCommenter  + '</a> :' + replyComments[i].replyContent + '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+replyComments[i].replyTime+'</span> '+
    			        	'<div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> '+
    			        	'<span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
    			        } */
    				}
                    
    				$(".commentAll .plBtn").parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
		            $(".commentAll .plBtn").siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
    				console.log("评论条数："+comments.length);
    			}
    		},
    		error : function() {
    			console.log("评论内容加载失败...");
    		}
    	});
    }
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        //获取输入内容
        var content = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        var commenterId = 1;
        var commenterName = "zzzz-Author";
        var commenterAvatar = "http://bmob-cdn-23813.b0.upaiyun.com/2019/03/09/2197de00403931f480f3126631749b52.jpg";
        var params = {
        		blogId:blogId,
        		commenterId:commenterId,
        		commenterName:commenterName,
        		commenterAvatar:commenterAvatar,
        		content:content
       	};
        if(content == "" || content == null){
        	layer.msg('请填写评论内容！', {
				icon : 2
			});
        	return;
        }
        $.ajax({
    		url : contextPath + '/submitComment',
    		type : 'post',
    		data : params,
    		dataType : 'json',
    		async : false,
    		success : function(data) {
    			if(data.resultCode == "0000"){
    				layer.msg('评论成功', {
        				icon : 1
        			});
    				queryComments();
    			}else{
    				layer.msg('评论失败！', {
        				icon : 2
        			});
    			}
    		},
    		error : function() {
    			layer.msg('评论失败！', {
    				icon : 2
    			});
    		}
    	});
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click','.pl-hf',function(){
    	var oThis = $(this);
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        var commentId = oThis.prop("id");
        $("#currentCommentId").val(commentId);
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val();
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click','.hf-pl',function(){
        var oThis = $(this);
        //获取输入内容
        var content = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var commentId = $("#currentCommentId").val();
        debugger
        if(content == ''){
        	layer.msg('请填写评论内容！', {
				icon : 2
			});
        	return;
        }
        var replierId = 1;
        var replierName = "zzzz-Author";
        var replierAvatar = "http://bmob-cdn-23813.b0.upaiyun.com/2019/03/09/2197de00403931f480f3126631749b52.jpg";
        var params = {
        		pid:commentId,
        		replierId:replierId,
        		replierName:replierName,
        		replierAvatar:replierAvatar,
        		replyContent:content,
        		toCommenter:oHfName
       	};
        $.ajax({
    		url : contextPath + '/replyComment',
    		type : 'post',
    		data : params,
    		dataType : 'json',
    		async : false,
    		success : function(data) {
    			if(data.resultCode == "0000"){
    				layer.msg('评论成功', {
        				icon : 1
        			});
    				queryComments();
    			}else{
    				layer.msg('评论失败！', {
        				icon : 2
        			});
    			}
    		},
    		error : function() {
    			layer.msg('评论失败！', {
    				icon : 2
    			});
    		}
    	});
    });
</script>

<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>
</html>
