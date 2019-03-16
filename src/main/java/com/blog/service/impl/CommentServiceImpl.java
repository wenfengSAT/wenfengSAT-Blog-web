package com.blog.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.CommentMapper;
import com.blog.mapper.ReplyCommentMapper;
import com.blog.model.Comment;
import com.blog.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;
	
	@Autowired
	private ReplyCommentMapper replyCommentMapper;

	@Override
	public List<Map<String,Object>> selectCommentByBlogId(Map<String, Object> param) {
		List<Map<String,Object>> comments = commentMapper.selectCommentByBlogId(param);
		for(int i = 0 ;i < comments.size(); i++) {
			Map<String,Object> comment = comments.get(i);
			Map<String, Object> replyCommentParam = new HashMap<String, Object>();
			replyCommentParam.put("pid", comment.get("id"));
			List<Map<String,Object>> replyComments = replyCommentMapper.selectReplyCommentByPId(replyCommentParam);
			comment.put("replyComments", replyComments);
		}
		return comments;
	}

	@Override
	public boolean deleteByPrimaryKey(int id) {
		
		if(commentMapper.deleteByPrimaryKey(id) < 1) {
			return false;
		}
		return true;
	}

	@Override
	public boolean insert(Comment comment) {
		if(commentMapper.insert(comment) < 1) {
			return false;
		}
		return true;
	}

}
