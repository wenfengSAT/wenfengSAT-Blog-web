package com.blog.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.ReplyCommentMapper;
import com.blog.model.ReplyComment;
import com.blog.service.ReplyCommentService;

@Service
public class ReplyCommentServiceImpl implements ReplyCommentService {
	
	@Autowired
	private ReplyCommentMapper replyCommentMapper;

	@Override
	public List<Map<String, Object>> selectReplyCommentByPId(Map<String, Object> param) {
		
		return replyCommentMapper.selectReplyCommentByPId(param);
	}

	@Override
	public boolean deleteByPrimaryKey(int id) {
		if(replyCommentMapper.deleteByPrimaryKey(id) < 1) {
			return false;
		}
		return true;
	}

	@Override
	public boolean insert(ReplyComment comment) {
		if(replyCommentMapper.insert(comment) < 1) {
			return false;
		}
		return true;
	}

}
