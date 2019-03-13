package com.blog.model;

import java.util.Date;

public class ReplyComment {

	private int id;
	private int pid;
	private int replierId;
	private String replierName;
	private String replierAvatar;
	private String replyContent;
	private String toCommenter;
	private Date replyTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getReplierId() {
		return replierId;
	}
	public void setReplierId(int replierId) {
		this.replierId = replierId;
	}
	public String getReplierName() {
		return replierName;
	}
	public void setReplierName(String replierName) {
		this.replierName = replierName;
	}
	public String getReplierAvatar() {
		return replierAvatar;
	}
	public void setReplierAvatar(String replierAvatar) {
		this.replierAvatar = replierAvatar;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getToCommenter() {
		return toCommenter;
	}
	public void setToCommenter(String toCommenter) {
		this.toCommenter = toCommenter;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
}
