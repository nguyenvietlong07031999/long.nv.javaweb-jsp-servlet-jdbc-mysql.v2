package jp.vn.yuanyuan.controller.web;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.vn.yuanyuan.constant.SystemConstant;
import jp.vn.yuanyuan.model.NewModel;
import jp.vn.yuanyuan.model.RoleModel;
import jp.vn.yuanyuan.model.UserModel;
import jp.vn.yuanyuan.paging.PageRequest;
import jp.vn.yuanyuan.paging.Pageble;
import jp.vn.yuanyuan.service.INewService;
import jp.vn.yuanyuan.service.IUserService;
import jp.vn.yuanyuan.sort.Sorter;
import jp.vn.yuanyuan.utils.FormUtil;
import jp.vn.yuanyuan.utils.SessionUtil;

//import jp.vn.yuanyuan.model.UserModel;

@WebServlet(urlPatterns = {"/trang-chu","/dang-nhap","/dang-ki","/thoat"})
public class HomeController extends HttpServlet{

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	

	@Inject
	private IUserService userService;
	@Inject
	private INewService newService;
	
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException{
		
		String action = request.getParameter("action");
		if(action !=null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if(message!=null&&alert!=null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}else if(action !=null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request,"USERMODEL");
			response.sendRedirect(request.getContextPath()+"/trang-chu");
		}else if(action !=null && action.equals("register")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/register.jsp");
			rd.forward(request, response);
		}
		else {
			//request.setAttribute("categories",categoryService.findAll());
			NewModel model =FormUtil.toModel(NewModel.class, request);
			Pageble pageble = new PageRequest(model.getPage(),model.getMaxPageItem(),
					new Sorter(model.getSortName(),model.getSortBy()),model.getStrCategory());
			model.setListResult(newService.findAll(pageble));
			request.setAttribute(SystemConstant.MODEL,model);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}
		
		
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
			
		String action = request.getParameter("action");
		if(action!=null&&action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findByUserNameAndPasswordAndStatus(model.getUserName(),model.getPassword(),1);
			if(model!=null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if(model.getRole().getCode().equals("USER")) {
					response.sendRedirect(request.getContextPath()+"/trang-chu");
				}else if(model.getRole().getCode().equals("ADMIN")) {
					response.sendRedirect(request.getContextPath()+"/admin-home");
				}
			}
			else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid&alert=danger");
			}
		}else if(action!=null&action.equals("register")) {
			
			if(userService.findOneByUserName(request.getParameter("userName"))==null) {
				UserModel userModel = FormUtil.toModel(UserModel.class, request);
				Long roleId = 2L;
				
				int status = 1;
				userModel.setRoleId(roleId);
				userModel.setStatus(status);
				userModel.setCreatedby(userModel.getUserName());
				userModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
				RoleModel roleModel = new RoleModel();
				roleModel.setCode("USER");
				roleModel.setName("USER");
				userModel.setRole(roleModel);
				userService.save(userModel);
				register(request,response,"User Registered Successfully");
			}
			else {
				register(request,response,"UserName existed!!!");
			}
			
		}
		}

	private void register(HttpServletRequest request, HttpServletResponse response,String notification) 
			throws ServletException,IOException{
		
		request.setAttribute("NOTIFICATION", notification);
		RequestDispatcher rd = request.getRequestDispatcher("/views/register.jsp");
		rd.forward(request, response);
		
	}
}