/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package nongsan.webmvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nongsan.webmvc.model.Ordered;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.OrderedService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.OrderedServiceImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;

/**
 *
 * @author Vostro 5568
 */
public class orderDetailController extends HttpServlet {

private static final long serialVersionUID = 1L;
	OrderedService orderedServcie = new OrderedServiceImpl();
	ProductService productService = new ProductServiceImpl();
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            
                String id = req.getParameter("id");
		List<Ordered> orderedList = orderedServcie.GetByIDTran(Integer.parseInt(id)); 
		req.setAttribute("orderedlist", orderedList);
		List<Product> products = new ArrayList<Product>();
		for(Ordered ordered: orderedList)
		{
			Product product = new Product();
			product = productService.get(Integer.parseInt(ordered.getProduct_id()));
			products.add(product);
		}
		req.setAttribute("products", products);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/order-detail.jsp"); 
		dispatcher.forward(req, resp); 
	}


}
