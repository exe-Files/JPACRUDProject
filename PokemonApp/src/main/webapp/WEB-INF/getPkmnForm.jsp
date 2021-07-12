<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="css/homeStyles.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Find a Pokemon</title>
</head>
<body>
	<a href="home.do"><button class="btn btn-dark mt-1 fixed-top">Go
			Home</button></a>
	<div
		class="container mx-auto d-flex flex-column vh-100 w-75 mx-auto text-center justify-content-center">
		<div class="w-50 mx-auto border p-4 form-border">
			<h1>Find Your Pokemon</h1>
			<p>Please enter the ${typeOfSearch} you would like search for: </p>

			<form action="getPokemon.do">
				<div class="input-group mb-3">
					<input name="${typeOfSearch}" class="form-control"
						placeholder="Enter Pokemon ${typeOfSearch}"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-dark" type="submit">Search</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>