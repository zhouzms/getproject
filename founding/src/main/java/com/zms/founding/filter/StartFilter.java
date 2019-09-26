package com.zms.founding.filter;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *服务器一启动自动加载上下文参数
 *到application中
 * @author 19448
 *
 */
public class StartFilter implements ServletContextListener{
	//在服务器启动时，创建application对象时执行的方法
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//将项目上下文路径拿到
		String path=sce.getServletContext().getContextPath();
		sce.getServletContext().setAttribute("APP_PATH", path);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

}
