package nongsan.webmvc.controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.service.TransactionService;
import nongsan.webmvc.service.impl.TransactionServicesImpl;

/**
 *
 * @author Vostro 5568
 */
public class ListOrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
	private static final long serialVersionUID = 1L; 
	TransactionService transactionService = new TransactionServicesImpl(); 
 
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
            
                String userSession  = req.getParameter("username");
		List<Transactions> transactionList = transactionService.getByIdUser(userSession); 
		req.setAttribute("orders", transactionList); 
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/list-orders.jsp"); 
		dispatcher.forward(req, resp); 
	} 


}
