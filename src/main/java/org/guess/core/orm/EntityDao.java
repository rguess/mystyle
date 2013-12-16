package org.guess.core.orm;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface EntityDao<T,ID extends Serializable> {

	T get(ID id);

	List<T> getAll();

	void save(T o);

	void delete(T o);

	void delete(ID id);

	Page<T> findPage(final PageRequest pageRequest, String hql, final Object... values);

	Page<T> findPage(final PageRequest pageRequest, String hql, final Map<String, ?> values);
	
}
