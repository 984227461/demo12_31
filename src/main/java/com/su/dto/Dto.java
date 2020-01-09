package com.su.dto;

import java.util.Date;

public class Dto {
		private Integer id;

	    private String title;

	    private Date createdate;

	    private String content;

	    private Integer classid;
	    
	    private String cname;


		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public Date getCreatedate() {
			return createdate;
		}

		public void setCreatedate(Date createdate) {
			this.createdate = createdate;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public Integer getClassid() {
			return classid;
		}

		public void setClassid(Integer classid) {
			this.classid = classid;
		}

		public String getCname() {
			return cname;
		}

		public void setCname(String cname) {
			this.cname = cname;
		}
}
