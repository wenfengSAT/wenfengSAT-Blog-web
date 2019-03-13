var globalCount = 0;
$(".top").click(function() {
	$('body,html').animate({
		scrollTop : 0
	}, 1000);
	return false;
});

for (var i = 1; i <= 7; i++) {
	if (i == 7) {
		$(".a7 a").addClass("nav_color");
	} else {
		$('.a' + i + ' a').removeClass("nav_color");
	}
}
var width = window.innerWidth || document.documentElement.clientWidth;
if (width < 700) {
	$(".top").css("display", "none");
}
$(window).scroll(function() {
	if ($(document).scrollTop() > 800 && width > 700) {
		$(".top").css("display", "block");
	} else {
		$(".top").css("display", "none");
	}
});
$(document).ready(function() {
	initBlogByNew();
});

// 初始化推荐
var initBlogByNew = function() {
	// 设置参数
	var params = {
		pageSize : 10,
		page : 1,
		status : 1
	};
	$.ajax({
		url : 'selectGroupLikeBlogListByPage',
		type : 'get',
		data : params,
		dataType : 'json',
		success : function(data) {
			var newBlog = '';
			var data = data.blogList;
			var time = '';
			for (var i = 0; i < data.length; i++) {
				var id = data[i].id.toString(8) * data[i].id;
				time = i * 0.05;
				newBlog += '<li style="animation-delay:' + time
						+ 's" class="animated fadeIn"><b><a href="find/' + id
						+ '.html">' + data[i].title + '</a></b><p><span>'
						+ data[i].introduction + '</span></p></li>';
			}
			// 初始化数据
			$(".paihang").find(".new").html(newBlog);
		},
		error : function() {
			layer.msg('加载的太快啦', {
				icon : 2
			});
		}
	});
};
// 加载完成后
window.onload = function() {
	var oH2 = document.getElementsByTagName("h2")[0];
	var oUl = document.getElementsByTagName("ul")[0];
	oH2.onclick = function() {
		var style = oUl.style;
		style.display = style.display == "block" ? "none" : "block";
		oH2.className = style.display == "block" ? "open" : ""
	}

}