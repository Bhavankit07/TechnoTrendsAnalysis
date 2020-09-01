package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DictionaryTable")

public class DictionaryVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int dictionaryId;
	
	@Column(name="DictionaryName")
	private String dictionaryName; 
	
	@Column(name="DictionaryDescription")
	private String dictionaryDescription;

	public int getDictionaryId() {
		return dictionaryId;
	}

	public void setDictionaryId(int dictionaryId) {
		this.dictionaryId = dictionaryId;
	}

	public String getDictionaryName() {
		return dictionaryName;
	}

	public void setDictionaryName(String dictionaryName) {
		this.dictionaryName = dictionaryName;
	}

	public String getDictionaryDescription() {
		return dictionaryDescription;
	}

	public void setDictionaryDescription(String dictionaryDescription) {
		this.dictionaryDescription = dictionaryDescription;
	}

}
