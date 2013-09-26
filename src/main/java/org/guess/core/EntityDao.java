package org.guess.core;

import java.io.Serializable;
import java.util.List;

public interface EntityDao<T,ID extends Serializable> {

	T get(ID id);

	List<T> getAll();

	void save(T o);

	void delete(T o);

	void delete(ID id);
}
