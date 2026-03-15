package com.inventory.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import com.inventory.dao.*;
import com.inventory.model.Product;
		
public class AddProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        Product product = new Product(name, category, quantity, price);
        ProductDAO dao = new ProductDAOImpl();
        dao.addProduct(product);

        response.sendRedirect("viewProducts");
    }
}
