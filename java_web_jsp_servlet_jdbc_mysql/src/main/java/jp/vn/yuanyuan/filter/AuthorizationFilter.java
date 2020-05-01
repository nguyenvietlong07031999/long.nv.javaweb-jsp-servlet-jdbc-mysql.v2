package jp.vn.yuanyuan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.vn.yuanyuan.constant.SystemConstant;
import jp.vn.yuanyuan.model.UserModel;
import jp.vn.yuanyuan.utils.SessionUtil;

public class AuthorizationFilter implements Filter{
	
	private ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.setContext(filterConfig.getServletContext());
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		
		String url = request.getRequestURI();
		if(url.startsWith("/java_web_jsp_servlet_jdbc_mysql/admin")) {
			UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			if(model!=null) {
				if(model.getRole().getCode().equals(SystemConstant.ADMIN)) {
					filterChain.doFilter(request, response);
				}else if(model.getRole().getCode().equals(SystemConstant.USER)) {
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_permission&alert=danger");
				}
			}
			else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
			}
			
		}else if(url.startsWith("/java_web_jsp_servlet_jdbc_mysql/group")){
				UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
				if(model!=null) {
					filterChain.doFilter(request, response);
				}else {
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
				}
		}else if(url.startsWith("/java_web_jsp_servlet_jdbc_mysql/item")){
			UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			if(model!=null) {
				filterChain.doFilter(request, response);
			}else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
			}
		}else {
			filterChain.doFilter(request, response);
		}
		
	}

	@Override
	public void destroy() {
		
	}

	public ServletContext getContext() {
		return context;
	}

	public void setContext(ServletContext context) {
		this.context = context;
	}
	

}

