package org.guess.core.service;

import java.io.Serializable;
import java.util.List;

import org.guess.core.orm.EntityDao;

abstract public class BaseServiceImpl<T, ID extends Serializable, M extends EntityDao<T, ID>>
		implements BaseService<T, ID> {

/*	private Class<T> entityClass;

	public BaseServiceImpl() {
		entityClass = ReflectionUtils.getSuperClassGenricType(getClass());
	}*/
	
	protected abstract M getEntityDao();

//	public M getEntityDao() {
//		List<Field> fields = ReflectionUtils.getFieldsByType(this,
//				ReflectionUtils.getSuperClassGenricType(getClass(), 2));
//		entityDao = (M) ReflectionUtils.getFieldValue(this, fields.get(0)
//				.getName());
//		return entityDao;
//	}

	@Override
	public T get(ID id) throws Exception {
		return getEntityDao().get(id);
	}

	@Override
	public List<T> getAll() throws Exception {
		return getEntityDao().getAll();
	}

	@Override
	public void save(T o) throws Exception {
		getEntityDao().save(o);
	}

	@Override
	public void update(T o) throws Exception {
		getEntityDao().save(o);
	}

	@Override
	public void remove(T o) throws Exception {
		getEntityDao().delete(o);
	}

	@Override
	public void removeById(ID id) throws Exception {
		getEntityDao().delete(id);
		
	}

}
