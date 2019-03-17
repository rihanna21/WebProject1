package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.NewPostAction;

public class ControllerAjax extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        requestAjax(request, response); // get��İ� post����� ��� requestPro�� ó��
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	requestAjax(request, response);
    }
    
	public void requestAjax(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
		
		try {
			//Controller Service Ŭ���� ����
			CommandAjax com = new NewPostAction();
			//ajax ��û ó��
			com.requestAjax(request, response);			
			
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		
	}
	
}
