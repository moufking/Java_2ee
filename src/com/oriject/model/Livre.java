package com.oriject.model;

import javax.servlet.http.HttpServletRequest;

public class Livre {
	

	public static Livre parseRequest (HttpServletRequest request)
	{
		Livre  livre = new Livre();
		livre.setTitre(request.getParameter("titre"));
		livre.setAuteur(request.getParameter("auteur"));
		livre.setAnnee(request.getParameter("annee"));
		livre.setResume(request.getParameter("resume"));
		livre.setUmprunter(request.getParameter("umprunter"));
		

		return livre;
		
		
	}
	
	
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getAnnee() {
		return annee;
	}
	public void setAnnee(String annee) {
		this.annee = annee;
	}
	public String getUmprunter() {
		return umprunter;
	}
	public void setUmprunter(String umprunter) {
		this.umprunter = umprunter;
	}
	
	public Boolean wantGeneratePDF()
	{
		if("false".equalsIgnoreCase(getUmprunter()))
		{
			return Boolean.TRUE;
		}
		return Boolean.FALSE;
	}
	
	public String getResume() {
		return resume;
	}


	public void setResume(String resume) {
		this.resume = resume;
	}
	String titre;
	String auteur;
	String resume;
	String annee;
	String umprunter;
}
