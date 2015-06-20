package csa.spring.dao;

import java.util.List;

import csa.spring.model.ColorType;;



public interface ColorTypeDao {
	
	public void add(ColorType ColorType);
	public void edit(ColorType ColorType);
	public void delete(int id);
	public ColorType getColorType(int id);
	public List getAllColorType();
	
	
}
