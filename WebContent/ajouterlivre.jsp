<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body class="text-center">
<div class="container">

<div class="col-lg-offset-2 col-lg-6">
<form action="AjouterLivre" method="POST" class="form-signin">
	
				<label> Titre : </label>
					<input type="text" class="form-control" name="titre"><br/>
					
					<label>  Auteur :</label>
		<input type="text" class="form-control" name="auteur"><br/>
		<label>  Annee :</label>
		 <select class="form-control" name="annee">
		 			<option value="2001">2001</option>
		 			<option value="2002">2002</option>
		 			<option value="2003">2003</option>
		 			<option value="2004">2004</option>
		 			<option value="2005">2005</option>
		 			<option value="2006">2006</option>
		 			<option value="2007">2007</option>
		 			<option value="2008">2008</option>
		 		
		 		</select><br>
		 		<label>Desscription</label>
		 		<textarea  class="form-control" rows="10px" cols="10px" name="resume" >
		 			
		 		</textarea><br>
		 
		Emprunter <input type="checkbox" name="umprunter" value="false"><br><br>
			<input type="submit"  class="btn btn-primary"value="VALIDER">
	</form>
</div>
</div>



</body>
</html>