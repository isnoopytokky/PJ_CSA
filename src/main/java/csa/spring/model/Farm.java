package csa.spring.model;

// Generated May 31, 2015 12:54:58 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Farm generated by hbm2java
 */
@Entity
@Table(name = "farm", catalog = "farm")
public class Farm implements java.io.Serializable {

	private Integer idfarm;
	private String farmName;
	private String framAddress;
	private Integer memberId;

	public Farm() {
	}

	public Farm(String farmName, String framAddress, Integer memberId) {
		this.farmName = farmName;
		this.framAddress = framAddress;
		this.memberId = memberId;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idfarm", unique = true, nullable = false)
	public Integer getIdfarm() {
		return this.idfarm;
	}

	public void setIdfarm(Integer idfarm) {
		this.idfarm = idfarm;
	}

	@Column(name = "farm_name", length = 45)
	public String getFarmName() {
		return this.farmName;
	}

	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}

	@Column(name = "fram_address", length = 45)
	public String getFramAddress() {
		return this.framAddress;
	}

	public void setFramAddress(String framAddress) {
		this.framAddress = framAddress;
	}

	@Column(name = "member_id")
	public Integer getMemberId() {
		return this.memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

}
