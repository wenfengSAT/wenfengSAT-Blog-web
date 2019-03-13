package com.blog.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.CommentMapper;
import com.blog.model.Comment;
import com.blog.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentMapper;

	@Override
	public List<Map<String,Object>> selectCommentByBlogId(Map<String, Object> param) {
		
		return commentMapper.selectCommentByBlogId(param);
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
