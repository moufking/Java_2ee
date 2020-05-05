<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<div class="container">
<div class="row">

<div class="col-lg-8">
Titre du livre  : ${requestScope.titre}<br>
</div>

<div class="col-lg-8">
Annee : ${requestScope.annee}<br>
</div>

<div class="col-lg-8">
Résumé : ${requestScope.resume}<br>
</div>

<div class="col-lg-8">
Auteur : ${requestScope.auteur} <br>
</div>


<div class="col-lg-8">
Auteur : ${requestScope.auteur} <br>
</div>

<div class="col-lg-8">

<c:if test="${requestScope.emprunter== true}">
<div class="alert alert-danger">
			 	<strong>Non disponible à l'emprunt</strong>
</div>
			</c:if>
		


 <c:if test="${requestScope.emprunter!= true}">
 <div class="alert alert-success">
 
						 <strong>Le Livre que vous consulter est actuellement:Disponible à l'emprunt </strong>
</div>
			</c:if><br>

			
</div>

			
<div class="col-lg-8">


<c:if test="${requestScope.emprunter== true}">
						<form method="POST" action="update_status">
						<input type="hidden" name="titre" value="${requestScope.titre}">
		            <input type="hidden" name="auteur" value="${requestScope.auteur}">
		            <input type="hidden" name="annee" value="${requestScope.annee}">
		            <input type="hidden" name="resume" value="${requestScope.resume}">
						<input type="hidden" name="emprunter" value="${requestScope.emprunter}">
						<button type="submit" class="btn btn-success">Liberer le livre </button>
							
						</form> 
			</c:if>
			
			 <c:if test="${requestScope.emprunter!= true}">     
			 
			 <form method="POST" action="update_status">
			    <input type="hidden" name="titre" value="${requestScope.titre}">
		            <input type="hidden" name="auteur" value="${requestScope.auteur}">
		            <input type="hidden" name="annee" value="${requestScope.annee}">
		            <input type="hidden" name="resume" value="${requestScope.resume}">
			 			<input type="hidden" name="emprunter" value="${requestScope.emprunter}">
						<button type="submit" class="btn btn-success"> Emprunter le livre </button>
							
						</form>        
			</c:if><br>
</div>
				

			
			
			
			
</div>
</div>



 			
</body>
</html>