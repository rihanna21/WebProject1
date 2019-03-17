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
	 * ����ڰ� �Է��� URL�ּҿ� �ش��ϴ� controller class ��ü ���� 
	 */	
	private void loadProperties(String path) { 
        ResourceBundle rbHome = ResourceBundle.getBundle(path); //properties ���� �ε�
        Enumeration<String> actionEnumHome = rbHome.getKeys();
 
        while (actionEnumHome.hasMoreElements())
        {
        	String command = actionEnumHome.nextElement(); // ~.do(key��) command ����
            String className = rbHome.getString(command); // ~.do ���Ͽ� �ش��ϴ� class�� ����(key value)
 
            try {
                Class commandClass = Class.forName(className); // �ش� ���ڿ��� Ŭ������  �����
                Object commandInstance = commandClass.newInstance(); // �ش� Ŭ������ ��ü�� ����
                commandMap.put(command, commandInstance); // Map ��ü�� commandMap�� ��ü ����
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
        requestPro(request, response); // get��İ� post����� ��� requestPro�� ó��
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        requestPro(request, response);
    }
    
    private void requestPro(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	String view = null;
    	CommandAction com = null;
 
    	// ��û : http://localhost/web/test.jsp
    	// request.getContextPath() : ������Ʈ ��� -> /web ��θ� ��´�.
    	// request.getRequestURI()  : ������Ʈ�� ���� ��� -> /web/test.jsp ��θ� ��´�.
    	// request.getRequestURL()  : full ���(http/s ��������, ��Ʈ ���� ����)
        try {
            String command = request.getRequestURI(); 
            
            // ��û URI���� ������Ʈ ��θ� �����Ͽ� command ������ �����Ѵ�. (�� command=/join.do)
            if (command.indexOf(request.getContextPath()) == 0) {
               command = command.substring(request.getContextPath().length());
            }
            //command ���� �ش��ϴ� �ν��Ͻ�(value)�� com ������ �ε��Ѵ�. (��. action.JoinAction)
            com = (CommandAction)commandMap.get(command);
 
            if (com == null) {
                System.out.println("not found : " + command);
                return;
            }
            
            //�������� ������ �̸��� return �޴´�.
            view = com.requestPro(request, response);
 
            if (view == null) {
                return;
            }
        } catch (Throwable e) {
            throw new ServletException(e);
        }
 
        if (view == null)
            return;
 
        //dispatcher : Ŭ���̾�Ʈ�� ��û�ϸ鼭 ������ �����͸� �״�� �����Ѵ�.
        //             �������� �Ǵ��� �ּҰ� ������� �ʴ´�.(���� request ������ ����)
        //redirect : ���ο� �������� �̵��ؼ� ���� �����͸� ����� �� ����.
        //           �������� �� �������� �ּҰ� ����ȴ�. �������� jsp������������ �������� request������ ������ ���� ������ �� ����.
        //jsp ������ ȣ��
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
 
    }

}
