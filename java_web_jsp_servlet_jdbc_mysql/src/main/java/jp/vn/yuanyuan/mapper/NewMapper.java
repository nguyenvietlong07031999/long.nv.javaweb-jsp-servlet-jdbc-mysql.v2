package jp.vn.yuanyuan.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import jp.vn.yuanyuan.model.NewModel;

public class NewMapper implements RowMapper<NewModel> {
	
	@Override
	public NewModel mapRow(ResultSet resultSet) {
	
		try {
			NewModel news = new NewModel();
			news.setId(resultSet.getLong("id"));
			news.setTitle(resultSet.getString("title"));
			news.setContent(resultSet.getString("content"));
			news.setCategoryId(resultSet.getLong("categoryid"));
			news.setThumbnail(resultSet.getString("thumbnail"));
			news.setShortDescription(resultSet.getString("shortdescription"));
			news.setCreatedDate(resultSet.getTimestamp("createddate"));
			news.setCreatedby(resultSet.getString("createdby"));
			if(resultSet.getString("modifiedby")!=null) {
				news.setModifiedBy(resultSet.getString("modifiedby"));
			}
			if(resultSet.getTimestamp("modifieddate")!=null) {
				news.setModifiedDate(resultSet.getTimestamp("modifieddate"));
			}
			
			return news;
		} catch (SQLException e) {
			return null;
		}		
	}

}
