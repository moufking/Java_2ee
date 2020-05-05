package com.projet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oriject.model.Livre;

/**
 * Servlet implementation class AjouterLivre
 */
@WebServlet("/AjouterLivre")
public class AjouterLivre extends HttpServlet {
	ArrayList<Livre> tab_livre = new ArrayList<Livre>();//nouveau tableau 

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterLivre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ServletContext context = request.getSession().getServletContext();
		String annee = request.getParameter("annee");
		System.out.println(annee);

		Livre livre =  Livre.parseRequest(request);
		   

        Object content = context.getAttribute("bibliotheque");
        if (content != null ) {
        	     	
        	tab_livre.add(livre);
        }
        
       
        context.setAttribute("bibliotheque",tab_livre);
        
        RequestDispatcher rd = request.getRequestDispatcher("");
		rd.forward(request,response);
	}

}
