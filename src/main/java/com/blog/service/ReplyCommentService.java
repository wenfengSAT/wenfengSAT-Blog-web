package com.blog.service;


import java.util.List;
import java.util.Map;

import com.blog.model.ReplyComment;

public interface ReplyCommentService {
	
	List<Map<String,Object>> selectReplyCommentByPId(Map<String,Object> param);

	boolean deleteByPrimaryKey(int id);
	
	boolean insert(ReplyComment comment);
}
