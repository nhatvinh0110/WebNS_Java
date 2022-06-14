/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package nongsan.webmvc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.UserService;
import nongsan.webmvc.service.impl.UserServicesImpl;

/**
 *
 * @author Vostro 5568
 */
public class UpdateUserController extends HttpServlet {

    private static final long serialVersionUID = 1L;
	UserService userService = new UserServicesImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name = req.getParameter("username");
        User user = userService.get(user_name);
        req.setAttribute("user", user);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/user-update.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		int user_id = Integer.parseInt(req.getParameter("user-id"));
		String user_name = req.getParameter("user-name");
		String user_email = req.getParameter("user-email");
		String user_phone = req.getParameter("user-phone");
		String user_userName = req.getParameter("user-userName");
		String user_password = req.getParameter("user-password");
		String user_created = req.getParameter("user-created");
		
		
		User user = new User();
		user.setName(user_name);
		user.setEmail(user_email);
		user.setPhone(user_phone);
		user.setUsername(user_userName);
		user.setPassword(user_password);
		user.setCreated(user_created);
		user.setId(user_id);
		userService.edit(user);
		resp.sendRedirect(req.getContextPath() + "/view/client/userupdate");
		//resp.sendRedirect(req.getContextPath() + "/view/admin/user.jsp");
	}

}
