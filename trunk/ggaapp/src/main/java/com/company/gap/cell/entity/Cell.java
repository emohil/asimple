package com.company.gap.cell.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.company.gap.base.entity.GeneralModel;

@Entity
@Table(name="t_production_cell")
public class Cell extends GeneralModel {
	private int cell_id;
	private String cell_code;
	private String cell_location;
	private double cell_area;
	private Date cell_cdate;
	private int cell_status;
	public int getCell_id() {
		return cell_id;
	}
	public void setCell_id(int cell_id) {
		this.cell_id = cell_id;
	}
	public String getCell_code() {
		return cell_code;
	}
	public void setCell_code(String cell_code) {
		this.cell_code = cell_code;
	}
	public String getCell_location() {
		return cell_location;
	}
	public void setCell_location(String cell_location) {
		this.cell_location = cell_location;
	}
	public double getCell_area() {
		return cell_area;
	}
	public void setCell_area(double cell_area) {
		this.cell_area = cell_area;
	}
	public Date getCell_cdate() {
		return cell_cdate;
	}
	public void setCell_cdate(Date cell_cdate) {
		this.cell_cdate = cell_cdate;
	}
	public int getCell_status() {
		return cell_status;
	}
	public void setCell_status(int cell_status) {
		this.cell_status = cell_status;
	}
}
