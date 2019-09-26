package com.zms.founding.common;

import java.util.List;

public class Page <T>{
	private int pageno;//当前页
	private int pagesize;//展示项数
	private long count;//总共多少条数据
	private int totalpage;//总共有多少页
	private List<T> list;//数据数量
	//当前页
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		if(pageno<=0) {
			this.pageno=1;
		}
		if(pageno>totalpage) {
			this.pageno=totalpage;
		}
		this.pageno = pageno;
	}
	//展示项数
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		if(pagesize<=0) {
			pagesize=10;
		}
		this.pagesize = pagesize;
	}
	//总共多少条数据
	public long getCount() {
		return count;
	}
	public void setCount(long count) {
		if(count<=0) {
			count=0;
		}
		this.count = count;		
	}
	//总共有多少页
	public int getTotalpage() {
		return (int) ((getCount()%getPagesize())==0?(getCount()/getPagesize()):getCount()/getPagesize()+1); 
	}
	//记录数
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
}
