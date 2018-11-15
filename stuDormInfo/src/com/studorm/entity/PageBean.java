package com.studorm.entity;

public class PageBean {
	private int page;//��ǰҳ
	private int pageSize;//ÿһҳ��ʾ�ļ�¼��
	@SuppressWarnings("unused")
	private int start;//ÿһҳ����ʼ��¼
	
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
