package com.human.vo;

public class SearchVO {
	private int startNo;// 게시판테이블,회원테이블의 필드와는 직접관계없음.
	private int endNo;
	private String depart = null;
	private String depart2 = null;
	private String startDate = null;
	private String endDate = null;
	private String seldate = null;
	private String outdate = null;

	public int getStartNo() {
		return startNo;
	}

	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}

	public int getEndNo() {
		return endNo;
	}

	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getDepart2() {
		return depart2;
	}

	public void setDepart2(String depart2) {
		this.depart2 = depart2;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getSeldate() {
		return seldate;
	}

	public void setSeldate(String seldate) {
		this.seldate = seldate;
	}

	public String getOutdate() {
		return outdate;
	}

	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}

}
