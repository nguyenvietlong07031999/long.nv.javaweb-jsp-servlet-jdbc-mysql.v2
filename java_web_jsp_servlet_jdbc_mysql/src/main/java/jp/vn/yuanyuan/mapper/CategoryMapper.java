package jp.vn.yuanyuan.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import jp.vn.yuanyuan.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel>{
	
	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
	
		try {
			CategoryModel category = new CategoryModel();
			category.setId(resultSet.getLong("id"));
			category.setCode(resultSet.getString("code"));
			category.setName(resultSet.getString("name"));
			return category;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return null;
		}		
	}

}
