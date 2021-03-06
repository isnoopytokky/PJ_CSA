package csa.spring.model;

// Generated May 31, 2015 12:54:58 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CattleShowsHasFestivityId generated by hbm2java
 */
@Embeddable
public class CattleShowsHasFestivityId implements java.io.Serializable {

	private int cattleShowsNo;
	private int festivityNo;

	public CattleShowsHasFestivityId() {
	}

	public CattleShowsHasFestivityId(int cattleShowsNo, int festivityNo) {
		this.cattleShowsNo = cattleShowsNo;
		this.festivityNo = festivityNo;
	}

	@Column(name = "cattle_shows_No", nullable = false)
	public int getCattleShowsNo() {
		return this.cattleShowsNo;
	}

	public void setCattleShowsNo(int cattleShowsNo) {
		this.cattleShowsNo = cattleShowsNo;
	}

	@Column(name = "festivity_No", nullable = false)
	public int getFestivityNo() {
		return this.festivityNo;
	}

	public void setFestivityNo(int festivityNo) {
		this.festivityNo = festivityNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CattleShowsHasFestivityId))
			return false;
		CattleShowsHasFestivityId castOther = (CattleShowsHasFestivityId) other;

		return (this.getCattleShowsNo() == castOther.getCattleShowsNo())
				&& (this.getFestivityNo() == castOther.getFestivityNo());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getCattleShowsNo();
		result = 37 * result + this.getFestivityNo();
		return result;
	}

}
