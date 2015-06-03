package csa.spring.dao;

import java.util.List;

import csa.spring.model.Festivity;


public interface FestivityDao {
	
	public void add(Festivity festivity);
	public void edit(Festivity festivity);
	public void delete(int id);
	public Festivity getFestivity(int id);
	public List getAllFestivity();
	public List getAdmin1();
}
