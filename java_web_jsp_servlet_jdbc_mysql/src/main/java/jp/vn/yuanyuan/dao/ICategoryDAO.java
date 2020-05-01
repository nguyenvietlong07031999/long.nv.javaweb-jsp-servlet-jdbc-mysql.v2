package jp.vn.yuanyuan.dao;

import java.util.List;

import jp.vn.yuanyuan.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {

	List<CategoryModel> findAll();
	CategoryModel findOne(long id);
	CategoryModel findOneByCode(String code);
}
