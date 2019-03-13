package com.blog.mapper;

import java.util.List;
import java.util.Map;

import com.blog.model.Comment;

public interface CommentMapper {

	List<Map<String,Object>> selectCommentByBlogId(Map<String,Object> param);
	
	int deleteByPrimaryKey(int id);
	
	int insert(Comment comment);
}
