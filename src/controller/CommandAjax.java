package controller;

import javax.servlet.http.*;

public interface CommandAjax {	
	public void requestAjax(HttpServletRequest request, HttpServletResponse response) 
			throws Throwable;
}
