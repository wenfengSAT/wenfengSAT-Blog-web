package com.blog.model;

import java.util.Date;
import java.util.List;

public class Comment {

	private int id;
	private int blogId;
	private int commenterId;
	private String commenterName;
	private String commenterAvatar;
	private String content;
	private Date commentTime;
	private List<ReplyComment> replyComments;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public int getCommenterId() {
		return commenterId;
	}
	public void setCommenterId(int commenterId) {
		this.commenterId = commenterId;
	}
	public String getCommenterName() {
		return commenterName;
	}
	public void setCommenterName(String commenterName) {
		this.commenterName = commenterName;
	}
	public String getCommenterAvatar() {
		return commenterAvatar;
	}
	public void setCommenterAvatar(String commenterAvatar) {
		this.commenterAvatar = commenterAvatar;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	public List<ReplyComment> getReplyComments() {
		return replyComments;
	}
	public void setReplyComments(List<ReplyComment> replyComments) {
		this.replyComments = replyComments;
	}
	
}
