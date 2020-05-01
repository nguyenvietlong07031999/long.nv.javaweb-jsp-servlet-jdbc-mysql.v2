package jp.vn.yuanyuan.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import jp.vn.yuanyuan.dao.ICommentDAO;
import jp.vn.yuanyuan.model.CommentModel;
import jp.vn.yuanyuan.service.ICommentService;

public class CommentService implements ICommentService{

	
	@Inject
	private ICommentDAO commentDao;
	@Override
	public List<CommentModel> finByNewId(Long newId) {
		
		return commentDao.findCommentByNewId(newId);
	}
	@Override
	public void save(CommentModel commentModel) {
		commentModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		commentDao.save(commentModel);
	}

}
