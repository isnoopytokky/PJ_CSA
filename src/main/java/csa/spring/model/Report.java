package csa.spring.model;

// Generated May 31, 2015 12:54:58 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Report generated by hbm2java
 */
@Entity
@Table(name = "report", catalog = "farm")
public class Report implements java.io.Serializable {

	private Integer id;
	private String namefestivity;
	private String numpeople;
	private String numcattle;
	private String finalprice;
	private Integer festivityNo;
	private Integer worktogetherId;

	public Report() {
	}

	public Report(String namefestivity, String numpeople, String numcattle, String finalprice, Integer festivityNo,
			Integer worktogetherId) {
		this.namefestivity = namefestivity;
		this.numpeople = numpeople;
		this.numcattle = numcattle;
		this.finalprice = finalprice;
		this.festivityNo = festivityNo;
		this.worktogetherId = worktogetherId;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "namefestivity", length = 45)
	public String getNamefestivity() {
		return this.namefestivity;
	}

	public void setNamefestivity(String namefestivity) {
		this.namefestivity = namefestivity;
	}

	@Column(name = "numpeople", length = 45)
	public String getNumpeople() {
		return this.numpeople;
	}

	public void setNumpeople(String numpeople) {
		this.numpeople = numpeople;
	}

	@Column(name = "numcattle", length = 45)
	public String getNumcattle() {
		return this.numcattle;
	}

	public void setNumcattle(String numcattle) {
		this.numcattle = numcattle;
	}

	@Column(name = "finalprice", length = 45)
	public String getFinalprice() {
		return this.finalprice;
	}

	public void setFinalprice(String finalprice) {
		this.finalprice = finalprice;
	}

	@Column(name = "festivity_No")
	public Integer getFestivityNo() {
		return this.festivityNo;
	}

	public void setFestivityNo(Integer festivityNo) {
		this.festivityNo = festivityNo;
	}

	@Column(name = "worktogether_id")
	public Integer getWorktogetherId() {
		return this.worktogetherId;
	}

	public void setWorktogetherId(Integer worktogetherId) {
		this.worktogetherId = worktogetherId;
	}

}
