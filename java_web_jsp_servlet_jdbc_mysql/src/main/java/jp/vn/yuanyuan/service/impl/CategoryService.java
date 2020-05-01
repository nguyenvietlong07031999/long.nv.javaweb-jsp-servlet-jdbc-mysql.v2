package jp.vn.yuanyuan.service.impl;

import java.util.List;

import javax.inject.Inject;

import jp.vn.yuanyuan.dao.ICategoryDAO;
import jp.vn.yuanyuan.model.CategoryModel;
import jp.vn.yuanyuan.service.ICategoryService;

public class CategoryService implements ICategoryService {
	
	@Inject
	private ICategoryDAO categoryDao;
	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

}
