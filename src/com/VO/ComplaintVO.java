package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complainmaster")
public class ComplaintVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int complainId;
	
	@Column(name="complainName")
	String complainName;
	
	@Column(name="complainDescription")
	String complainDescription;
	
	@Column(name="complainDate")
	String complainDate;
	
	@Column(name="complainTime")
	String complainTime;
	
	@Column(name="complainStatus")
	String complainStatus;
	
	@ManyToOne
	LoginVO loginVO;
	
	@Column(name="complainReply")
	String complainReply;


	public String getComplainTime() {
	return complainTime;
}

public void setComplainTime(String complainTime) {
	this.complainTime = complainTime;
}

	public int getComplainId() {
		return complainId;
	}

	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}

	public String getComplainName() {
		return complainName;
	}

	public void setComplainName(String complainName) {
		this.complainName = complainName;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public String getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}

	public String getComplainStatus() {
		return complainStatus;
	}

	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getComplainReply() {
		return complainReply;
	}

	public void setComplainReply(String complainReply) {
		this.complainReply = complainReply;
	}

}
