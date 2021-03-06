package com.projet.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class details
 */
@WebServlet("/details")
public class details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details() {
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
		doGet(request, response);
		
		String auteur = request.getParameter("auteur");
		String titre = request.getParameter("titre");
		String annee = request.getParameter("annee");
		String emprunter = request.getParameter("emprunter");
		String resume = request.getParameter("resume");
		
		request.setAttribute("auteur",auteur);
		request.setAttribute("titre",titre);
		request.setAttribute("annee",annee);
		request.setAttribute("auteur",auteur);
		request.setAttribute("emprunter",emprunter);
		request.setAttribute("resume",resume);
		RequestDispatcher rd = request.getRequestDispatcher("informations.jsp");
		rd.forward(request,response);
		
	}

}
