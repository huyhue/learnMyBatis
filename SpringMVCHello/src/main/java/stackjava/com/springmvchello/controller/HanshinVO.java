package stackjava.com.springmvchello.controller;

import java.sql.Date;

public class HanshinVO {

	private static final long serialVersionUID = 1L;

	private String id;
	private String newItem;
	private String status;
	private String category;
	private String title;
	private String attachment;

	private String applicant;
	
	private String app_date;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAttachment() {
		return attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public String getApp_date() {
		return app_date;
	}

	public void setApp_date(String app_date) {
		this.app_date = app_date;
	}

//	public String getAppDate() {
//		return appDate;
//	}
//
//	public void setAppDate(String appDate) {
//		this.appDate = appDate;
//	}
	
	
}
