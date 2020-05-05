<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <jsp:useBean id="formHandler" scope="page" class="com.projet.controller.AjouterLivre">
    <jsp:setProperty name="formHandler" property="*"/>
    </jsp:useBean>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
 <div class="container">
 
 <div class="col-lg-offset-2 col-lg-6">
 <table class="table">
  <thead class="thead-dark">
    <tr>
     <th>Nom du livre</th>
            <th>Nom de l'auteur</th>
            <th>Annee</th>
            <th>Emprunter</th>
             <th>Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="item" items="${noms}">
  		${item}
   </c:forEach>
    <c:forEach var="item" items="${bibliotheque}">
          <tr>
            <td>
            ${item.getTitre()}
            </td>
            <td>${item.getAuteur()}</td>
            <td>${item.getAnnee()}</td>
            <td>
            
            <c:if test="${item.wantGeneratePDF()== true}">
				<strong>Oui</strong>
			</c:if>
			
			 <c:if test="${item.wantGeneratePDF()!= true}">
				<strong>Non</strong>
			</c:if>
            
            
            </td>
            <td>
            	            <form action="details" method="POST">
		            <input type="hidden" name="titre" value="${item.getTitre()}">
		            <input type="hidden" name="auteur" value="${item.getAuteur()}">
		            <input type="hidden" name="annee" value="${item.getAnnee()}">
		            <input type="hidden" name="emprunter" value="${item.wantGeneratePDF()}">
		            <input type="hidden" name="resume" value="${item.getResume()}">
		            
            	<button   class="btn btn-primary" type="submit"> Voir détails </button>	
            		
            </form>
			</td>
        </tr>
 </c:forEach>
  </tbody>
</table>
 </div>

  
 </div>
  <div class=" col-log-4">
 <a href="ajouterlivre.jsp" class="btn btn-success">Ajouter un livre </a>
 
 </div>






</body>
</html>