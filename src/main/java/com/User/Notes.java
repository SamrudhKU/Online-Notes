package com.User;

import java.sql.Timestamp;

public class Notes {
	private int nid;
	private String title;
	private String content;
	private Timestamp date;
	private int uid;
	
	public Notes() {
		super();
	}
	
	public Notes(int nid, String title, String content, Timestamp date, int uid) {
		super();
		this.nid = nid;
		this.title = title;
		this.content = content;
		this.date = date;
		this.uid = uid;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp timestamp) {
		this.date = timestamp;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
