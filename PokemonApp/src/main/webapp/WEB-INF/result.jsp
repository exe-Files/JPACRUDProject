<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link href="css/homeStyles.css" rel="stylesheet">
<title>Search Results</title>
</head>
<body>
	<div>
		<a href="home.do"><button class="btn btn-dark mt-1 fixed-top">Go
				Home</button></a>
	</div>
	<div
		class="container vh-100 d-flex flex-column justify-content-center ">
		<div>
			<h1 class="text-center">Pokemon Results</h1>
		</div>
		<div class="w-100 border p-4 form-border">
			<table class="table">
				<div>
					<h2>ID# ${pokemon.id} ${pokemon.name}</h2>
				</div>
				<div>
					Edit: <a aria-label="Edit"
						href="updatePkmn.do?pkmnId=${pokemon.id}"
						class="button bi bi-journal"></a>
				</div>

				<div>
					Delete: <a aria-label="Delete"
						href="deletePkmn.do?pkmnId=${pokemon.id}"
						class="button bi bi-trash"></a>
				</div>


				<div>
					<c:if test="${pokemon.id <= 252}">
						<img
							src="https://pokeres.bastionbot.org/images/pokemon/${pokemon.id}.png"
							height=250px width=250px alt="An image of ${pokemon.name}">
					</c:if>
				</div>
				<tr scope="row">
					<td>Name:</td>
					<td>${pokemon.name}</td>
				</tr>
				<tr scope="row">
					<td>Type 1</td>
					<td>${pokemon.type1}</td>
				</tr>
				<tr scope="row">
					<td>Type 2</td>
					<td>${pokemon.type2}</td>

				</tr>
				<tr scope="row">
					<td>Description</td>
					<td>${pokemon.description}</td>
				</tr>
				<tr scope="row">
					<td>Base Stat Total</td>
					<td>${pokemon.total}</td>
				</tr>
				<tr scope="row">
					<td>HP</td>
					<td>${pokemon.hp}</td>
				</tr>
				<tr scope="row">
					<td>Attack</td>
					<td>${pokemon.attack}</td>
				</tr>
				<tr scope="row">
					<td>Defense</td>
					<td>${pokemon.defense}</td>
				</tr>
				<tr scope="row">
					<td>Special Attack</td>
					<td>${pokemon.spAttack}</td>
				</tr>
				<tr scope="row">
					<td>Special Defense</td>
					<td>${pokemon.spDefense}</td>
				</tr>
				<tr scope="row">
					<td>Speed</td>
					<td>${pokemon.speed}</td>
				</tr>
				<tr scope="row">
					<td>Generation</td>
					<td>${pokemon.generation}</td>
				</tr>
				<tr scope="row">
					<td>Height</td>
					<td>${pokemon.height}</td>
				</tr>
				<tr scope="row">
					<td>Weight</td>
					<td>${pokemon.weight}</td>
				</tr>
				<tr scope="row">
					<td>Catch Rate</td>
					<td>${pokemon.catchRate}</td>
				</tr>

				<tr scope="row">
					<td>Release Year</td>
					<td>${pokemon.releaseYear}</td>
				</tr>
		</div>
		</table>
	</div>
	</div>
</body>
</html>