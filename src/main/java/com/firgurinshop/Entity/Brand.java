package com.firgurinshop.Entity;

import javax.persistence.Table;


public class Brand {
	private int brand_id;
	private String brand_name;
	private String brand_desc;
	private int brand_status;
	private String created_at;
	private String updated_at;
	public Brand() {
		super();
	}
	public int getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getBrand_desc() {
		return brand_desc;
	}
	public void setBrand_desc(String brand_desc) {
		this.brand_desc = brand_desc;
	}
	public int getBrand_status() {
		return brand_status;
	}
	public void setBrand_status(int brand_status) {
		this.brand_status = brand_status;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	
	
}
