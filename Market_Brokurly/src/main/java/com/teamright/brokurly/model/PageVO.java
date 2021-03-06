package com.teamright.brokurly.model;

public class PageVO {
	private int page;
	private int perPageNum;
	
	public PageVO() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if (perPageNum <=0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	// method for MyBatis SQL Mapper
	public int getPageStart() {
		return (this.page-1) * perPageNum;
	}
	
	@Override
	public String toString() {
		return "PageVO [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
}
