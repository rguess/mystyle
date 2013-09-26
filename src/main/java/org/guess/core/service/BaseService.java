package org.guess.core.service;

import java.io.Serializable;
import java.util.List;

public interface BaseService<T,ID extends Serializable> {

	/**
	 * 根据ID获得单个对象
	 * 
	 * @param id
	 * @return
	 * @throws DataAccessException
	 */
	T get(ID id) throws Exception;

	/**
	 * 获得对象所有集合
	 * 
	 * @return
	 * @throws DataAccessException
	 */
	List<T> getAll() throws Exception;

	/**
	 * 保存对象
	 * 
	 * @param o
	 * @throws DataAccessException
	 */
	void save(T o) throws Exception;

	/**
	 * 更新对象
	 * 
	 * @param o
	 * @throws DataAccessException
	 */
	void update(T o) throws Exception;

	/**
	 * 删除对象
	 * 
	 * @param o
	 * @throws DataAccessException
	 */
	void remove(T o) throws Exception;

	/**
	 * 根据ID删除对象
	 * 
	 * @param id
	 * @throws DataAccessException
	 */
	void removeById(ID id) throws Exception;

}
