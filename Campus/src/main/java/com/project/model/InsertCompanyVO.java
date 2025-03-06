package com.project.model;

import javax.persistence.*;

@Entity
@Table(name = "company_tbl11")
public class InsertCompanyVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "company_name")
	private String companyName;

	@Column(name = "last_day_to_register")
	private String lastDayToRegister;

	@Column(name = "position")
	private String position;

	@Column(name = "qualification")
	private String qualification;

	@Column(name = "package")
	private String packageOffered;

	@Column(name = "location")
	private String location;

	

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLastDayToRegister() {
		return lastDayToRegister;
	}

	public void setLastDayToRegister(String lastDayToRegister) {
		this.lastDayToRegister = lastDayToRegister;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getPackageOffered() {
		return packageOffered;
	}

	public void setPackageOffered(String packageOffered) {
		this.packageOffered = packageOffered;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}
