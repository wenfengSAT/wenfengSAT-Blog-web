package com.blog.service;

import java.util.List;
import java.util.Map;

import com.blog.model.Comment;

public interface CommentService {

	List<Map<String,Object>> selectCommentByBlogId(Map<String,Object> param);
	
	boolean deleteByPrimaryKey(int id);
	
	boolean insert(Comment comment);
}
