package com.studorm.entity;

public class PageBean {
	private int page;//当前页
	private int pageSize;//每一页显示的记录数
	@SuppressWarnings("unused")
	private int start;//每一页的起始记录
	
	public int getStart() {
		return (page-1)*pageSize;
	}

	public PageBean() {
	}

	public PageBean(int page, int pageSize) {
		this.page = page;
		this.pageSize = pageSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	
	

}
