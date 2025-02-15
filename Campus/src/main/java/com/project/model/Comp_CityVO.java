package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Comp_City_tbl")
public class Comp_CityVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Id")
	private int id;

	@Column(name = "City")
	private String cityName;

	@Column(name = "Description")
	private String description;

	@Column(name = "status")
	private boolean status = true;

	@ManyToOne
	@JoinColumn(name = "Comp_StateVO")
	private Comp_StateVO Comp_StateVO;

	public Comp_StateVO getComp_StateVO() {
		return Comp_StateVO;
	}

	public void setComp_StateVO(Comp_StateVO Comp_tateVO) {
		this.Comp_StateVO = Comp_StateVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}