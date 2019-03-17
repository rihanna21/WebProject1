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
        requestAjax(request, response); // get방식과 post방식을 모두 requestPro로 처리
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	requestAjax(request, response);
    }
    
	public void requestAjax(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
		
		try {
			//Controller Service 클래스 생성
			CommandAjax com = new NewPostAction();
			//ajax 요청 처리
			com.requestAjax(request, response);			
			
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		
	}
	
}
