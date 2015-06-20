package csa.spring.service;

import java.util.List;

import csa.spring.model.Type;

public interface TypeService {

	public void add(Type Type);
	public void edit(Type Type);
	public void delete(int id);
	public Type getType(int id);
	public List getAllType();
}
