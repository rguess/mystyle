package org.guess.core.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.guess.core.orm.EntityDao;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;

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
	
	@Override
	public Page<T> findPage(PageRequest pageRequest, String hql,Map<String, ?> values) {
		return getEntityDao().findPage(pageRequest, hql, values);
	}
	
	@Override
	public Page<T> findPage(PageRequest pageRequest, String hql, Object... values) {
		return getEntityDao().findPage(pageRequest, hql, values);
	}

}
