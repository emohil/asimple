package com.company.gap.manure.enumeration;


public enum ManureOutStockStatus {
	UNAUDITED(0, "未审核"),
	
	AUDITED(1, "已审核"),
	
	NULLIFY(2, "已作废");
	
	private int status;
	private String name;
	ManureOutStockStatus(int status, String name) {
		this.status = status;
		this.name = name;
	}
	
	public static ManureOutStockStatus valueOf(int status) {
		switch (status) {
			case 0 : return UNAUDITED;
			case 1 : return AUDITED;
			case 2 : return NULLIFY;
			default: return UNAUDITED;
		}
	}
	
	public int getStatus() {
		return status;
	}
	public String getName() {
		return name;
	}
}

