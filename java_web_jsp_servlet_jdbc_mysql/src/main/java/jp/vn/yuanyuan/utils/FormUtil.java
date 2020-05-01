package jp.vn.yuanyuan.utils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class FormUtil {

	@SuppressWarnings("unchecked")
	public static<T> T toModel(Class<T> Clazz,HttpServletRequest request) {
		
		T object = null;
		try {
			object = Clazz.newInstance();
			BeanUtils.populate(object, request.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException |InstantiationException e) {
			System.out.print(e.getMessage());
		}
		return object;
	}
}
