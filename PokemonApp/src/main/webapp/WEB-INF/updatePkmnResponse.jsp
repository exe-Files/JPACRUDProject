<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link href="css/homeStyles.css" rel="stylesheet">
<title>Updated Pokemon</title>
</head>
<body>
	<a href="home.do"><button class="btn btn-dark mt-1 fixed-top">Go
			Home</button></a>
	<div class="container vh-100 d-flex flex-column justify-content-center ">
	<c:choose>
		<c:when test="${empty updatedPkmn}">
			<div>
				<h1 class="text-center">${pokemon.name} successfully updated.</h1>
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<h1 class="text-center">${pokemon.name} not updated</h1>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
	<a href="updatePkmn.do?pkmnId=${pokemon.id}">Continue Editing</a>
	
</body>
</html>