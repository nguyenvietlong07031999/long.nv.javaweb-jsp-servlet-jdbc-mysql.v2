package jp.vn.yuanyuan.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.vn.yuanyuan.constant.SystemConstant;
import jp.vn.yuanyuan.model.NewModel;
import jp.vn.yuanyuan.paging.PageRequest;
import jp.vn.yuanyuan.paging.Pageble;
import jp.vn.yuanyuan.service.ICategoryService;
import jp.vn.yuanyuan.service.INewService;
import jp.vn.yuanyuan.sort.Sorter;
import jp.vn.yuanyuan.utils.FormUtil;
import jp.vn.yuanyuan.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-new-list"})
public class NewController  extends HttpServlet{

	@Inject
	private INewService newService;
	
	@Inject
	private ICategoryService categoryService;
	
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException{
		
		
		NewModel model =FormUtil.toModel(NewModel.class, request);
		
		String view ="";
		if(model.getType().equals(SystemConstant.LIST)) {
			
			Pageble pageble = new PageRequest(model.getPage(),model.getMaxPageItem(),
					new Sorter(model.getSortName(),model.getSortBy()),model.getStrCategory());
			model.setListResult(newService.findAll(pageble));
			model.setTotalItem(newService.getTotalItem());
			model.setTotalPage((int)Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
			view="/views/admin/new/list.jsp";
		}else if(model.getType().equals(SystemConstant.EDIT)) {
			if(model.getId()!=null) {
				model = newService.findOne(model.getId());
			}
			request.setAttribute("categories",categoryService.findAll());
			view="/views/admin/new/edit.jsp";
		}else if(model.getType().equals(SystemConstant.CHART)) {
			String[] categoryCode = {"mini","midsize","compact","large"};
			float rate[]=new float[4];
			float sum=0;
			for(int i=0;i<3;i++) {
				Pageble pageble = new PageRequest(model.getPage(),model.getMaxPageItem(),
						new Sorter(model.getSortName(),model.getSortBy()),categoryCode[i]);
				model.setListResult(newService.findAll(pageble));
				model.setTotalItem(newService.getTotalItem());
				model.setCategoryRate(Math.round(((float) model.getListResult().size()/model.getTotalItem())*100));
				
				rate[i]= model.getCategoryRate();
				sum+=rate[i];
			}
				rate[3]=100-sum;
				request.setAttribute(SystemConstant.RATE, rate);
			view="/views/admin/new/chart.jsp";
		}
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL,model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
			
		}
}
