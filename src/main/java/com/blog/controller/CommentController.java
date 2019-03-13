package com.blog.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.model.Comment;
import com.blog.util.Result;
import com.blog.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	private static final String ERROR_CODE_I100 = "I100";
	
	/**
	 * 
	 * @param comment
	 * @return
	 */
	@RequestMapping(value = "/submitComment", method = RequestMethod.POST)
	@ResponseBody
	public Result submitComment(Comment comment) {
		comment.setCommentTime(new Date());
		if(!commentService.insert(comment)) {
			return Result.error(ERROR_CODE_I100, "提交评论失败！");
		}
		return Result.ok("评论成功!");
	}
	
	@RequestMapping(value = "/queryComments", method = RequestMethod.POST)
	@ResponseBody
	public Result queryComments(Integer blogId) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("blogId", blogId);
		List<Map<String, Object>> comments = commentService.selectCommentByBlogId(param);
		return Result.ok("查询成功!").put("result", comments);
	}
	
}
