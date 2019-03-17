package controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class ControllerAction extends HttpServlet {
	private Map commandMap = new HashMap();
	
	public void init(ServletConfig config) throws ServletException{
		loadProperties("controller/properties/Command");	
	}
	
	/*
	 * 사용자가 입력한 URL주소에 해당하는 controller class 객체 생성 
	 */	
	private void loadProperties(String path) { 
        ResourceBundle rbHome = ResourceBundle.getBundle(path); //properties 파일 로딩
        Enumeration<String> actionEnumHome = rbHome.getKeys();
 
        while (actionEnumHome.hasMoreElements())
        {
        	String command = actionEnumHome.nextElement(); // ~.do(key값) command 저장
            String className = rbHome.getString(command); // ~.do 파일에 해당하는 class명 저장(key value)
 
            try {
                Class commandClass = Class.forName(className); // 해당 문자열을 클래스로  만든다
                Object commandInstance = commandClass.newInstance(); // 해당 클래스의 객체를 생성
                commandMap.put(command, commandInstance); // Map 객체인 commandMap에 객체 저장
            } catch (ClassNotFoundException e) {
            	continue; 
            } catch (InstantiationException e) {
            	e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
     }
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        requestPro(request, response); // get방식과 post방식을 모두 requestPro로 처리
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        requestPro(request, response);
    }
    
    private void requestPro(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	String view = null;
    	CommandAction com = null;
 
    	// 요청 : http://localhost/web/test.jsp
    	// request.getContextPath() : 프로젝트 경로 -> /web 경로를 얻는다.
    	// request.getRequestURI()  : 프로젝트와 파일 경로 -> /web/test.jsp 경로를 얻는다.
    	// request.getRequestURL()  : full 경로(http/s 프로토콜, 포트 정보 포함)
        try {
            String command = request.getRequestURI(); 
            
            // 요청 URI에서 프로젝트 경로를 제거하여 command 변수에 저장한다. (예 command=/join.do)
            if (command.indexOf(request.getContextPath()) == 0) {
               command = command.substring(request.getContextPath().length());
            }
            //command 값에 해당하는 인스턴스(value)를 com 변수에 로드한다. (예. action.JoinAction)
            com = (CommandAction)commandMap.get(command);
 
            if (com == null) {
                System.out.println("not found : " + command);
                return;
            }
            
            //포워딩할 페이지 이름을 return 받는다.
            view = com.requestPro(request, response);
 
            if (view == null) {
                return;
            }
        } catch (Throwable e) {
            throw new ServletException(e);
        }
 
        if (view == null)
            return;
 
        //dispatcher : 클라이언트가 요청하면서 전송한 데이터를 그대로 유지한다.
        //             포워딩이 되더라도 주소가 변경되지 않는다.(같은 request 영역을 공유)
        //redirect : 새로운 페이지로 이동해서 기존 데이터를 사용할 수 없다.
        //           포워딩될 때 브라우저의 주소가 변경된다. 포워딩된 jsp페이지에서는 서블릿에서 request영역에 공유한 값에 접근할 수 없다.
        //jsp 페이지 호출
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
 
    }

}
