package jp.vn.yuanyuan.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import jp.vn.yuanyuan.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel>{

	@Override
	public CommentModel mapRow(ResultSet resultSet) {
	
		
		try {
			CommentModel commentModel = new CommentModel();
			commentModel.setId(resultSet.getLong("id"));
			commentModel.setContent(resultSet.getString("content"));
			commentModel.setUserId(resultSet.getLong("user_id"));
			commentModel.setNewId(resultSet.getLong("new_id"));
			commentModel.setCreatedDate(resultSet.getTimestamp("createddate"));
			commentModel.setCreatedby(resultSet.getString("createdby"));
			if(resultSet.getString("modifiedby")!=null) {
				commentModel.setModifiedBy(resultSet.getString("modifiedby"));
			}
			if(resultSet.getTimestamp("modifieddate")!=null) {
				commentModel.setModifiedDate(resultSet.getTimestamp("modifieddate"));
			}
			
			return commentModel;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
